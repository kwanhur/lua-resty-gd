-- Copyright (C) by Kwanhur Huang


describe("create", function()

    local path = require('path')
    local image_path = path.new('/')
    local image_dir = image_path.join(path.currentdir(), "t", "image")
    local gd = require("resty.gd")

    it("create", function()
        local gdImage, err = gd.create(1, 1)
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        local gdImage, err = gd.create(-1, 1)
        assert.is_true(gdImage == nil)

        local gdImage, err = gd.create(1, -1)
        assert.is_true(gdImage == nil)

        local gdImage, err = gd.create(0, 0)
        assert.is_true(gdImage == nil)

        local gdImage, err = gd.create(0, 1)
        assert.is_true(gdImage == nil)

        local gdImage, err = gd.create(1, 0)
        assert.is_true(gdImage == nil)
    end)

    it("createTrueColor", function()
        local gdImage, err = gd.createTrueColor(1, 1)
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        local gdImage, err = gd.createTrueColor(-1, 1)
        assert.is_true(gdImage == nil)

        local gdImage, err = gd.createTrueColor(1, -1)
        assert.is_true(gdImage == nil)

        local gdImage, err = gd.createTrueColor(0, 0)
        assert.is_true(gdImage == nil)

        local gdImage, err = gd.createTrueColor(0, 1)
        assert.is_true(gdImage == nil)

        local gdImage, err = gd.createTrueColor(1, 0)
        assert.is_true(gdImage == nil)
    end)

    it("createFromJpeg", function()
        local gdImage, err = gd.createFromJpeg(image_dir .. "/t.jpg")
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        local gdImage, err = gd.createFromJpeg(image_dir .. "/not_found.jpg")
        assert.is_true(gdImage == nil)
    end)

    it("createFromJpegStr",function()
        local f = io.open(image_dir .. "/t.jpg")
        local blob = f:read("*a")
        f:close()

        local gd = require("resty.gd")
        local gdImage, err = gd.createFromJpegStr(blob)
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        blob = nil
        local gdImage, err = gd.createFromJpegStr(blob)
        assert.is_true(gdImage == nil)

        blob = ''
        local gdImage, err = gd.createFromJpegStr(blob)
        assert.is_true(gdImage == nil)

        blob = 'kwa'
        local gdImage, err = gd.createFromJpegStr(blob)
        assert.is_true(gdImage == nil)
    end)

    it("createFromGif", function()
        local gdImage, err = gd.createFromGif(image_dir .. "/t.gif")
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        local gdImage, err = gd.createFromGif(image_dir .. "/not_found.gif")
        assert.is_true(gdImage == nil)
    end)

    it("createFromGifStr",function()
        local f = io.open(image_dir .. "/t.gif")
        local blob = f:read("*a")
        f:close()

        local gdImage, err = gd.createFromGifStr(blob)
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        blob = nil
        local gdImage, err = gd.createFromGifStr(blob)
        assert.is_true(gdImage == nil)

        blob = ''
        local gdImage, err = gd.createFromGifStr(blob)
        assert.is_true(gdImage == nil)

        blob = 'kwa'
        local gdImage, err = gd.createFromGifStr(blob)
        assert.is_true(gdImage == nil)
    end)

    it("createFromPng", function()
        local gdImage, err = gd.createFromPng(image_dir .. "/gdtest.png")
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        local gdImage, err = gd.createFromPng(image_dir .. "/not_found.png")
        assert.is_true(gdImage == nil)
    end)

    it("createFromPngStr",function()
        local f = io.open(image_dir .. "/gdtest.png")
        local blob = f:read("*a")
        f:close()

        local gdImage, err = gd.createFromPngStr(blob)
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        blob = nil
        local gdImage, err = gd.createFromPngStr(blob)
        assert.is_true(gdImage == nil)

        blob = ''
        local gdImage, err = gd.createFromPngStr(blob)
        assert.is_true(gdImage == nil)

        blob = 'kwa'
        local gdImage, err = gd.createFromPngStr(blob)
        assert.is_true(gdImage == nil)
    end)

--    it("createFromGd", function()
--        local gdImage, err = gd.createFromGd(image_dir .. "/crafted_num_colors.gd")
--        print(err)
--        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
--        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')
--
--        local gdImage, err = gd.createFromGd(image_dir .. "/not_found.gd")
--        assert.is_true(gdImage == nil)
--    end)

    it("createFromGd2", function()
        local gdImage, err = gd.createFromGd2(image_dir .. "/gdtest.gd2")
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        local gdImage, err = gd.createFromGd2(image_dir .. "/not_found.gd2")
        assert.is_true(gdImage == nil)
    end)

    it("createFromGd2Str",function()
        local f = io.open(image_dir .. "/gdtest.gd2")
        local blob = f:read("*a")
        f:close()

        local gdImage, err = gd.createFromGd2Str(blob)
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        blob = nil
        local gdImage, err = gd.createFromGd2Str(blob)
        assert.is_true(gdImage == nil)

        blob = ''
        local gdImage, err = gd.createFromGd2Str(blob)
        assert.is_true(gdImage == nil)

        blob = 'kwa'
        local gdImage, err = gd.createFromGd2Str(blob)
        assert.is_true(gdImage == nil)
    end)

    it("createFromXbm", function()
        local gdImage, err = gd.createFromXbm(image_dir .. "/x10_basic_read.xbm")
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        local gdImage, err = gd.createFromXbm(image_dir .. "/not_found.xbm")
        assert.is_true(gdImage == nil)
    end)

--    it("createFromXpm", function()
--        local gdImage, err = gd.createFromXpm(image_dir .. "/color_name.xpm")
--        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
--        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')
--
--        local gdImage, err = gd.createFromXpm(image_dir .. "/not_found.xpm")
--        assert.is_true(gdImage == nil)
--    end)
end)