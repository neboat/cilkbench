//==============================================================
//
// SAMPLE SOURCE CODE - SUBJECT TO THE TERMS OF SAMPLE CODE LICENSE AGREEMENT,
// http://software.intel.com/en-us/articles/intel-sample-source-code-license-agreement/
//
// Copyright 2010-2013 Intel Corporation
//
// THIS FILE IS PROVIDED "AS IS" WITH NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT
// NOT LIMITED TO ANY IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE, NON-INFRINGEMENT OF INTELLECTUAL PROPERTY RIGHTS.
//
// ===============================================================

// Template for creating different kinds of images
// Includes exception handling

#ifndef IMAGE_BASE_H
#define IMAGE_BASE_H

#include <string>
#include <cassert>
#include <exception>

namespace io {

class exception : public std::exception {
public:
    exception(const std::string& message):
    m_message(message)
    {}
    virtual ~exception() throw() {}

    const char* what() const throw() { return m_message.c_str(); }

private:
    std::string m_message;
};

template<typename T>
class ImageBase {
public:
    ImageBase():
    m_image(0),
    m_width(0),
    m_height(0),
    m_bpp(0),
    m_image_size(0)
    {}
    inline int bpp() const { 
        return m_bpp; 
    } 
    virtual unsigned int channels() const = 0;

    inline int width() const { 
        return m_width; 
    }

    inline int height() const { 
        return m_height;
    }

    inline int size() const {
        return m_image_size;
    }

    inline T* image() const {
        return m_image;
    }

    template<typename I>
    void from_gray(const I* input) {
        for (unsigned int i = 0; i < m_width * m_height; ++i) {
            switch(channels()) {
            case 1: 
                m_image[i] = static_cast<unsigned char>(input[i]);
                break;
            case 3: {
                int idx = 3 * i;
                m_image[idx] = static_cast<unsigned char>(input[i]);
                m_image[idx + 1] = static_cast<unsigned char>(input[i]);
                m_image[idx + 2] = static_cast<unsigned char>(input[i]);
                break;
			}
            case 4: {
                int idx = 4 * i;
                m_image[idx] = static_cast<unsigned char>(input[i]);
                m_image[idx + 1] = static_cast<unsigned char>(input[i]);
                m_image[idx + 2] = static_cast<unsigned char>(input[i]);
                m_image[idx + 3] = 0;
                break;
			}
            default:;
                //throw io::exception("Invalid number of channels");
            }
        }
    }

    template<typename I>
    void from_rgb(I* input) {
        for (unsigned int i = 0; i < m_width * m_height; ++i) {
            switch(channels()) {
            case 1: {
                int idx = 3 * i;
                m_image[i] = static_cast<unsigned char>((float(input[idx]) + float(input[idx + 1]) + float(input[idx + 2]))/3.0f);
                break;
			}
			case 3: {
                int idx = 3 * i;
                m_image[idx] = static_cast<unsigned char>(input[idx]);
                m_image[idx + 1] = static_cast<unsigned char>(input[idx + 1]);
                m_image[idx + 2] = static_cast<unsigned char>(input[idx + 2]);
                break;
			}
            default:;
                //throw io::exception("Invalid number of channels");
			}
        }
    }

    template<typename O>
    void to_gray(O* output) {
        for (unsigned int i = 0; i < m_width * m_height; ++i) {
            switch(channels()) {
            case 1: {
                output[i] = static_cast<O>(m_image[i]);
                break;
			}
            case 3: {
                int idx = 3 * i;
                output[i] = static_cast<O>((float(m_image[idx]) + float(m_image[idx + 1]) + float(m_image[idx + 2])) / 3.0f);
                break;
			}
            case 4: {
                int idx = 4 * i;
                output[i] = static_cast<O>((float(m_image[idx]) + float(m_image[idx + 1]) + float(m_image[idx + 2])) / 3.0f);
                break;
			}
            default:; 
                //throw io::exception("Invalid number of channels");
            }
        }
    }

    template<typename O>
    void to_rgb(O* output) {
        for (unsigned int i = 0; i < m_width * m_height; ++i) {
            int idx = 3 * i;
            switch(channels()) {
            case 1:
                output[idx] = static_cast<O>(m_image[i]);
                output[idx + 1] = static_cast<O>(m_image[i]);
                output[idx + 1] = static_cast<O>(m_image[i]);
                break;
            case 3:
                output[idx] = static_cast<O>(m_image[idx]);
                output[idx + 1] = static_cast<O>(m_image[idx + 1]);
                output[idx + 2] = static_cast<O>(m_image[idx + 2]);
                break;
            case 4: {
                int idx1 = 4 * i;
                output[idx] = static_cast<O>(m_image[idx1]);
                output[idx + 1] = static_cast<O>(m_image[idx1 + 1]);
                output[idx + 2] = static_cast<O>(m_image[idx1 + 2]);
                break;
			}
            default:;
                //throw io::exception("Invalid number of channels");
            }
        }
    }

    /// Returns @p output with the conversion of m_image to the specified number of @p channels.
    /// Assumes that @p channels has a value from 1 to 4, but converts only for 1 and 3 channels.
    template<typename O>
    void to_channels(O* output, unsigned int num_channels) {
        if (num_channels == this->channels()) {
            assert(num_channels > 0);

            for (size_t i = 0; i < size_t(m_width) * m_height * num_channels; ++i) {
                output[i] = static_cast<O>(m_image[i]);
            }
        }
        else {
            assert(num_channels == 1 || num_channels == 3);

            if (num_channels == 1) {
                to_gray(output);
            }
            if (num_channels == 3) {
                to_rgb(output);
            }
        }
    }

    void clear() {
        m_width = 0;
        m_height = 0;
        m_bpp = 0;
        m_image_size = 0;

        if (m_image) {
            delete[] m_image;
            m_image = 0;
        }
    }

    bool loaded() {
        return (m_image != 0);
    }

protected:
    T* m_image;

    unsigned int m_width;
    unsigned int m_height;
    unsigned char m_bpp;
    unsigned long m_image_size;
};

} // namespace io

#endif // IMAGE_BASE_H
