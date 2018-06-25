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


// File specifying how to create and save BMP images
// Inherits ImageBase template with unsigned char
// To learn more how this is laid out, check http://en.wikipedia.org/wiki/BMP_file_format

#include "bmp_image.h"

#ifndef _USE_MATH_DEFINES
    #define _USE_MATH_DEFINES
#endif

#include <math.h>
#include <string>
#include <sstream>
#include <fstream>
#include <iostream>
#include <istream>
#include <cmath>
#include <memory.h>

using namespace io;

BMPImage::BMPImage() {
    clear();
}

BMPImage::BMPImage(unsigned int image_width, unsigned int image_height, unsigned char image_bpp) {
    if (image_bpp != 8 && image_bpp != 24 && image_bpp != 32) {
        //throw io::exception("Unsupported number of bits per pixel while creating a BMPImage!");
    }
    clear();
    m_height = image_height;
    m_width = image_width;
    m_bpp = image_bpp;
    m_image_size = m_width * m_height * channels();
    unsigned int data_size = static_cast<unsigned int>(ceil(double(m_bpp * m_width) / 32.0) * 4 * m_height);

    m_file_header.type = 0x4d42;
    /// A color table has to be specified when bpp <= 8 otherwise is optional
    /// Cases where a color table is optional are not supported by this implementation
    int offsetbits = sizeof(BitmapFileHeader) + sizeof(BitmapInfoHeader) + int(m_bpp <= 8 ? 4 * std::pow(2.0, double(m_bpp)) : 0) ;
    m_file_header.size = data_size + offsetbits;
    m_file_header.reserved1 = 0;
    m_file_header.reserved2 = 0;
    m_file_header.offsetbits = sizeof(BitmapFileHeader) + sizeof(BitmapInfoHeader) + int(m_bpp <= 8 ? 4 * std::pow(2.0, double(m_bpp)) : 0);

    m_info_header.size = sizeof(BitmapInfoHeader);
    m_info_header.width = m_width;
    m_info_header.height = m_height;
    m_info_header.planes = 1;
    m_info_header.bitcount = m_bpp;
    m_info_header.compression = 0;
    m_info_header.sizeimage = data_size;
    m_info_header.xpelspermeter = 0;
    m_info_header.ypelspermeter = 0;
    m_info_header.colorsused = int(m_bpp <= 8 ? std::pow(2.0, double(m_bpp)) : 0);
    m_info_header.colorsimportant = m_info_header.colorsused;

    m_image = new unsigned char[m_image_size];
    if (!m_image) {
        //throw io::exception("Insufficient memory!");
    }
}

BMPImage::BMPImage(const std::string& filename, const std::string& failover_file) {
    load(filename, failover_file);
}

BMPImage::~BMPImage() {
    clear();
}

void BMPImage::clear() {
    ImageBase<unsigned char>::clear();
}

unsigned int BMPImage::channels() const {
    return bpp() / 8;
}

/// If @p filename cannot be opened, this routine attempts to load @p failover_file instead.
/// Typically @p failover_file is copied to the directory with the executable after it is built.
bool BMPImage::load(const std::string& filename, const std::string& failover_file) {
    std::ifstream file;

    clear();
    file.open(filename.c_str(), std::ios::binary);

    if (!failover_file.empty() && !file.is_open()) {
        file.clear();
        file.open(failover_file.c_str(), std::ios::binary);

        /// If the failover file exists...
        if (file.is_open()) {
            std::cout << "The file '" << filename << "' does not exist." << std::endl;
            std::cout << "--> Use the default '" << failover_file << "' instead? [y] ";

            /// ...allow the user to determine if it should be used
            char c = ' ';
            while (c == ' ') {
                c = std::cin.get();
            }
            if (c == 'n' || c == 'N' || c == '0' || c == 'F' || c == 'f') {
                file.close();
            }
        }
    }

    if (!file.is_open()) {
        std::ostringstream message;
        message << "File '" << filename << "' not found!";

        if (filename.find("..") == 0) {
            message << std::endl << "--> Please check the relative path from the current directory to the specified image file.";
        }
        //throw io::exception(message.str());
    }

    /// Process the header
    file.read((char*)&m_file_header, sizeof(BitmapFileHeader));
    if (!file.good() || m_file_header.type != 0x4d42) {
        file.close();
        //throw io::exception("Invalid format for a BMP file!");
    }
    file.read((char*)&m_info_header, sizeof(BitmapInfoHeader));
    if (!file.good()) {
        file.close();
        //throw io::exception("Invalid format for a BMP file!");
    }

    m_width = m_info_header.width;
    m_height = m_info_header.height;
    m_bpp = (unsigned char) m_info_header.bitcount;

    m_image_size = m_width * m_height * channels();
    m_image = new unsigned char[m_image_size];

    const unsigned int row_size = static_cast<unsigned int>(ceil(double(m_bpp * m_width) / 32.0)) * 4;

    if (row_size == m_width * channels()) {
        file.read(reinterpret_cast<char*>(m_image), m_image_size);
    }
    else {
        /// Remove padding
        char* temp = new char[row_size * m_height];
        file.read(temp, row_size * m_height);

        for (unsigned int y = 0; y < m_height; ++y) {
            for (unsigned int x = 0; x < m_width; ++x) {
                for (unsigned int c = 0; c < channels(); ++c) {
                    m_image[c + x * channels() + y * m_width * channels()] = static_cast<unsigned char>(temp[c + x * channels() + y * row_size]);
                }
            }
        }
        delete[] temp;
    }

    if (!file.good()) {
        file.close();
        //throw io::exception("Invalid format for a BMP file!");
    }

    file.close();
    return true;
 }


bool BMPImage::valsig(const std::string& filename) const {
    std::ofstream file;
    file.open(filename.c_str(), std::ios::trunc);

    if (!file.good()) {
        //throw io::exception("Error creating a VALSIG file!");
        return false;
    }

    if (m_width > 0 && m_height > 0) {
        const unsigned int chan = channels();
        const unsigned int max_chan = 3;
        assert( chan <= max_chan );
        unsigned (*colsum)[max_chan] = new unsigned[m_width][max_chan];
        memset( colsum, 0, m_width*max_chan*sizeof(unsigned) );
        for( int d=0; d<1; ++d ) {
            file << "Frame " << d << " rows" << std::endl;
            for( unsigned int y=0; y<m_height; ++y ) {
                unsigned rowsum[max_chan];
                memset( rowsum, 0, max_chan*sizeof(unsigned) );
                for( unsigned int x=0; x<m_width; ++x ) {
                    for( unsigned int k=0; k<chan; ++k ) {
                        unsigned char v = static_cast<unsigned char>(m_image[k + x * chan + y * m_width * chan]);
                        rowsum[k] += v;
                        colsum[x][k] += v;
                    }
                }
                file << rowsum[0];
                for ( int k = 1; k < max_chan; ++k)
                    file << " " << rowsum[k];
                file << std::endl; 
            }
            file << "Frame " << d << " columns" << std::endl;
            for( unsigned int x=0; x<m_width; ++x ) {
                file << colsum[x][0];
                for ( int k = 1; k < max_chan; ++k)
                    file << " " << colsum[x][k];
                file << std::endl; 
            }
        }
        delete[] colsum;
    }

    if (!file.good()) {
        file.close();
        //throw io::exception("Error writing image data for a VALSIG file!");
        return false;
    }

    file.close();
    return true;
}


bool BMPImage::save(const std::string& filename) const
{
    std::ofstream file;
    file.open(filename.c_str(),std::ios::binary | std::ios::trunc);

    if (!file.good()) {
        //throw io::exception("Error creating a BMP file!");
        return false;
    }

    file.write(reinterpret_cast<const char*>(&m_file_header), sizeof(BitmapFileHeader));
    if (!file.good()) {
        file.close();
        //throw io::exception("Error writing the file header for a BMP file!");
        return false;
    }

    file.write(reinterpret_cast<const char*>(&m_info_header), sizeof(BitmapInfoHeader));
    if (!file.good()) {
        file.close();
        //throw io::exception("Error writing the info header for a BMP file!");
        return false;
    }


    if (m_bpp <= 8) {
        int color_table_size = int(pow(2.0, double(m_bpp)));
        BitmapRGBQuad m_color_table[256];
        for (int i = 0; i < color_table_size; ++i) {
            m_color_table[i].red = i;
            m_color_table[i].green = i;
            m_color_table[i].blue = i;
            m_color_table[i].reserved = 0;
        }
        file.write(reinterpret_cast<const char*>(m_color_table), sizeof(m_color_table));
        if (!file.good()) {
            file.close();
            //throw io::exception("Error writing the color table for a BMP file!");
            return false;
        }
    }
    if (m_info_header.sizeimage == m_image_size) {
        file.write((const char*)m_image, m_image_size);
    }
    else {
        /// Padding row size to a multiple of 4 bytes
        unsigned int row_size = static_cast<unsigned int>(ceil(double(m_bpp * m_width) / 32.0)) * 4;
        char* temp = new char[m_info_header.sizeimage];
        memset(temp, 0, m_info_header.sizeimage);
        for (unsigned int y = 0; y < m_height; ++y) {
            for (unsigned int x = 0; x < m_width; ++x) {
                for (unsigned int c = 0; c < channels(); ++c) {
                    temp[c + x * channels() + y * row_size] = static_cast<char>(m_image[c + x * channels() + y * m_width * channels()]);
                }
            }
        }
        file.write(temp, m_info_header.sizeimage);
        delete[] temp;
    }
    if (!file.good()) {
        file.close();
        //throw io::exception("Error writing image data for a BMP file!");
        return false;
    }

    file.close();
    return true;
}
