-- Copyright (C) by Kwanhur Huang


describe("create", function()

    local gd = require("resty.gd")

    it("createPaletteFromTrueColor", function()
        local gdImage, err = gd.createTrueColor(1, 1)
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        local dither, colors = true, 256
        local newImage = gdImage:createPaletteFromTrueColor(dither, colors)
        assert.is_true(newImage ~= nil and type(newImage) == 'table')
        assert.is_true(newImage.im ~= nil and type(newImage.im) == 'cdata')

        dither, colors = false, 256
        local newImage = gdImage:createPaletteFromTrueColor(dither, colors)
        assert.is_true(newImage ~= nil and type(newImage) == 'table')
        assert.is_true(newImage.im ~= nil and type(newImage.im) == 'cdata')

        dither, colors = true, 0
        local newImage = gdImage:createPaletteFromTrueColor(dither, colors)
        assert.is_true(newImage == nil)

        dither, colors = true, -1
        local newImage = gdImage:createPaletteFromTrueColor(dither, colors)
        assert.is_true(newImage == nil)

        dither, colors = true, 256.1
        local newImage = gdImage:createPaletteFromTrueColor(dither, colors)
        assert.is_true(newImage == nil)
    end)

    it("trueColorToPalette", function()
        local gdImage, err = gd.createTrueColor(1, 1)
        assert.is_true(gdImage ~= nil and type(gdImage) == 'table')
        assert.is_true(gdImage.im ~= nil and type(gdImage.im) == 'cdata')

        local dither, colors = true, 256
        local ret = gdImage:trueColorToPalette(dither, colors)
        assert.is_true(ret)

        dither, colors = false, 256
        local ret = gdImage:trueColorToPalette(dither, colors)
        assert.is_true(ret)

        dither, colors = true, 0
        local ret = gdImage:trueColorToPalette(dither, colors)
        assert.is_true(ret == false)

        dither, colors = true, -1
        local ret = gdImage:trueColorToPalette(dither, colors)
        assert.is_true(ret == false)

        dither, colors = true, 256.1
        local ret = gdImage:trueColorToPalette(dither, colors)
        assert.is_true(ret == false)
    end)
end)