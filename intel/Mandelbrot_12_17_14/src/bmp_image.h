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
// To learn more how this is laid out, check http://en.wikipedia.org/wiki/BMP_file_format

#ifndef BMP_IMAGE_H
#define BMP_IMAGE_H

#include "image_base.h"

namespace io {

#pragma pack (2)

typedef struct {
    unsigned short type;
    unsigned int size;
    unsigned short reserved1;
    unsigned short reserved2;
    unsigned int offsetbits;
} BitmapFileHeader;

typedef struct {
    unsigned int size;
    int width;
    int height;
    unsigned short planes;
    unsigned short bitcount;
    unsigned int compression;
    unsigned int sizeimage;
    int xpelspermeter;
    int ypelspermeter;
    unsigned int colorsused;
    unsigned int colorsimportant;
} BitmapInfoHeader;

typedef struct {
    unsigned char blue;
    unsigned char green;
    unsigned char red;
    unsigned char reserved;
} BitmapRGBQuad;

#pragma pack()

class BMPImage : public ImageBase<unsigned char> {
public:
    BMPImage();
    BMPImage(unsigned int width, unsigned int height, unsigned char bpp);
    BMPImage(const std::string& filename, const std::string& failover_file);
    ~BMPImage();
    bool load(const std::string& filename, const std::string& failover_file);
    bool save(const std::string& filename) const;
    // Save a validation signature, which is linear in width+heigh.
    bool valsig(const std::string& filename) const;
    virtual void clear();
    virtual unsigned int channels() const;

private:
    BitmapFileHeader m_file_header;
    BitmapInfoHeader m_info_header;
 };

} // namespace io

#endif // BMP_IMAGE_H
