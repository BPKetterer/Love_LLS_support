
---@alias vec2 any
---@alias vec4 any
---@alias mat4 any
---@alias cdata any

---@alias light_userdata any
-------------
-- MODULES --
-------------

--- https://love2d.org/wiki/love
---@alias love {
--- audio : love.audio,
--- data : love.data,
--- event : love.event,
--- filesystem : love.filesystem,
--- font : love.font,
--- graphics : love.graphics,
--- image : love.image,
--- joystick : love.joystick,
--- keyboard : love.keyboard,
--- math : love.math,
--- mouse : love.mouse,
--- physics : love.physics,
--- sound : love.sound,
--- system : love.system,
--- thread : love.thread,
--- timer : love.timer,
--- touch : love.touch,
--- video : love.video,
--- window : love.window,
--- getVersion : love.getVersion,
--- hasDeprecationOutput : love.hasDeprecationOutput,
--- isVersionCompatible : love.isVersionCompatible,
--- setDeprecationOutput : love.setDeprecationOutput,
--- draw : love.draw,
--- errhand : love.errhand,
--- errorhandler : love.errorhandler,
--- load : love.load,
--- lowmemory : love.lowmemory,
--- quit : love.quit,
--- run : love.run,
--- threaderror : love.threaderror,
--- update : love.update,
--- directorydropped : love.directorydropped,
--- displayrotated : love.displayrotated,
--- filedropped : love.filedropped,
--- focus : love.focus,
--- mousefocus : love.mousefocus,
--- resize : love.resize,
--- visible : love.visible,
--- keypressed : love.keypressed,
--- keyreleased : love.keyreleased,
--- textedited : love.textedited,
--- textinput : love.textinput,
--- mousemoved : love.mousemoved,
--- mousepressed : love.mousepressed,
--- mousereleased : love.mousereleased,
--- wheelmoved : love.wheelmoved,
--- gamepadaxis : love.gamepadaxis,
--- gamepadpressed : love.gamepadpressed,
--- gamepadreleased : love.gamepadreleased,
--- joystickadded : love.joystickadded,
--- joystickaxis : love.joystickaxis,
--- joystickhat : love.joystickhat,
--- joystickpressed : love.joystickpressed,
--- joystickreleased : love.joystickreleased,
--- joystickremoved : love.joystickremoved,
--- touchmoved : love.touchmoved,
--- touchpressed : love.touchpressed,
--- touchreleased : love.touchreleased,}

--- https://love2d.org/wiki/love.audio
---@alias love.audio {
--- getActiveEffects : love.audio.getActiveEffects,
--- getActiveSourceCount : love.audio.getActiveSourceCount,
--- getDistanceModel : love.audio.getDistanceModel,
--- getDopplerScale : love.audio.getDopplerScale,
--- getEffect : love.audio.getEffect,
--- getMaxSceneEffects : love.audio.getMaxSceneEffects,
--- getMaxSourceEffects : love.audio.getMaxSourceEffects,
--- getNumSources : love.audio.getNumSources,
--- getOrientation : love.audio.getOrientation,
--- getPosition : love.audio.getPosition,
--- getRecordingDevices : love.audio.getRecordingDevices,
--- getSourceCount : love.audio.getSourceCount,
--- getVelocity : love.audio.getVelocity,
--- getVolume : love.audio.getVolume,
--- isEffectsSupported : love.audio.isEffectsSupported,
--- newQueueableSource : love.audio.newQueueableSource,
--- newSource : love.audio.newSource,
--- pause : love.audio.pause,
--- play : love.audio.play,
--- resume : love.audio.resume,
--- rewind : love.audio.rewind,
--- setDistanceModel : love.audio.setDistanceModel,
--- setDopplerScale : love.audio.setDopplerScale,
--- setEffect : love.audio.setEffect,
--- setMixWithSystem : love.audio.setMixWithSystem,
--- setOrientation : love.audio.setOrientation,
--- setPosition : love.audio.setPosition,
--- setVelocity : love.audio.setVelocity,
--- setVolume : love.audio.setVolume,
--- stop : love.audio.stop,}

--- https://love2d.org/wiki/love.data
---@alias love.data {
--- compress : love.data.compress,
--- decode : love.data.decode,
--- decompress : love.data.decompress,
--- encode : love.data.encode,
--- getPackedSize : love.data.getPackedSize,
--- hash : love.data.hash,
--- newByteData : love.data.newByteData,
--- newDataView : love.data.newDataView,
--- pack : love.data.pack,
--- unpack : love.data.unpack,}

--- https://love2d.org/wiki/love.event
---@alias love.event {
--- clear : love.event.clear,
--- poll : love.event.poll,
--- pump : love.event.pump,
--- push : love.event.push,
--- quit : love.event.quit,
--- wait : love.event.wait,}

--- https://love2d.org/wiki/love.filesystem
---@alias love.filesystem {
--- append : love.filesystem.append,
--- areSymlinksEnabled : love.filesystem.areSymlinksEnabled,
--- createDirectory : love.filesystem.createDirectory,
--- enumerate : love.filesystem.enumerate,
--- exists : love.filesystem.exists,
--- getAppdataDirectory : love.filesystem.getAppdataDirectory,
--- getCRequirePath : love.filesystem.getCRequirePath,
--- getDirectoryItems : love.filesystem.getDirectoryItems,
--- getIdentity : love.filesystem.getIdentity,
--- getInfo : love.filesystem.getInfo,
--- getLastModified : love.filesystem.getLastModified,
--- getRealDirectory : love.filesystem.getRealDirectory,
--- getRequirePath : love.filesystem.getRequirePath,
--- getSaveDirectory : love.filesystem.getSaveDirectory,
--- getSize : love.filesystem.getSize,
--- getSource : love.filesystem.getSource,
--- getSourceBaseDirectory : love.filesystem.getSourceBaseDirectory,
--- getUserDirectory : love.filesystem.getUserDirectory,
--- getWorkingDirectory : love.filesystem.getWorkingDirectory,
--- init : love.filesystem.init,
--- isDirectory : love.filesystem.isDirectory,
--- isFile : love.filesystem.isFile,
--- isFused : love.filesystem.isFused,
--- isSymlink : love.filesystem.isSymlink,
--- lines : love.filesystem.lines,
--- load : love.filesystem.load,
--- mkdir : love.filesystem.mkdir,
--- mount : love.filesystem.mount,
--- newFile : love.filesystem.newFile,
--- newFileData : love.filesystem.newFileData,
--- read : love.filesystem.read,
--- remove : love.filesystem.remove,
--- setCRequirePath : love.filesystem.setCRequirePath,
--- setIdentity : love.filesystem.setIdentity,
--- setRequirePath : love.filesystem.setRequirePath,
--- setSource : love.filesystem.setSource,
--- setSymlinksEnabled : love.filesystem.setSymlinksEnabled,
--- unmount : love.filesystem.unmount,
--- write : love.filesystem.write,}

--- https://love2d.org/wiki/love.font
---@alias love.font {
--- newBMFontRasterizer : love.font.newBMFontRasterizer,
--- newFontData : love.font.newFontData,
--- newGlyphData : love.font.newGlyphData,
--- newImageRasterizer : love.font.newImageRasterizer,
--- newRasterizer : love.font.newRasterizer,
--- newTrueTypeRasterizer : love.font.newTrueTypeRasterizer,}

--- https://love2d.org/wiki/love.graphics
---@alias love.graphics {
--- arc : love.graphics.arc,
--- circle : love.graphics.circle,
--- clear : love.graphics.clear,
--- discard : love.graphics.discard,
--- draw : love.graphics.draw,
--- drawInstanced : love.graphics.drawInstanced,
--- drawLayer : love.graphics.drawLayer,
--- drawq : love.graphics.drawq,
--- ellipse : love.graphics.ellipse,
--- flushBatch : love.graphics.flushBatch,
--- line : love.graphics.line,
--- point : love.graphics.point,
--- points : love.graphics.points,
--- polygon : love.graphics.polygon,
--- present : love.graphics.present,
--- print : love.graphics.print,
--- printf : love.graphics.printf,
--- quad : love.graphics.quad,
--- rectangle : love.graphics.rectangle,
--- stencil : love.graphics.stencil,
--- triangle : love.graphics.triangle,
--- captureScreenshot : love.graphics.captureScreenshot,
--- newArrayImage : love.graphics.newArrayImage,
--- newCanvas : love.graphics.newCanvas,
--- newCubeImage : love.graphics.newCubeImage,
--- newFont : love.graphics.newFont,
--- newFramebuffer : love.graphics.newFramebuffer,
--- newImage : love.graphics.newImage,
--- newImageFont : love.graphics.newImageFont,
--- newMesh : love.graphics.newMesh,
--- newParticleSystem : love.graphics.newParticleSystem,
--- newPixelEffect : love.graphics.newPixelEffect,
--- newQuad : love.graphics.newQuad,
--- newScreenshot : love.graphics.newScreenshot,
--- newShader : love.graphics.newShader,
--- newSpriteBatch : love.graphics.newSpriteBatch,
--- newStencil : love.graphics.newStencil,
--- newText : love.graphics.newText,
--- newVideo : love.graphics.newVideo,
--- newVolumeImage : love.graphics.newVolumeImage,
--- setNewFont : love.graphics.setNewFont,
--- validateShader : love.graphics.validateShader,
--- getBackgroundColor : love.graphics.getBackgroundColor,
--- getBlendMode : love.graphics.getBlendMode,
--- getCanvas : love.graphics.getCanvas,
--- getColor : love.graphics.getColor,
--- getColorMask : love.graphics.getColorMask,
--- getColorMode : love.graphics.getColorMode,
--- getDefaultFilter : love.graphics.getDefaultFilter,
--- getDefaultImageFilter : love.graphics.getDefaultImageFilter,
--- getDepthMode : love.graphics.getDepthMode,
--- getFont : love.graphics.getFont,
--- getFrontFaceWinding : love.graphics.getFrontFaceWinding,
--- getLineJoin : love.graphics.getLineJoin,
--- getLineStipple : love.graphics.getLineStipple,
--- getLineStyle : love.graphics.getLineStyle,
--- getLineWidth : love.graphics.getLineWidth,
--- getMeshCullMode : love.graphics.getMeshCullMode,
--- getPixelEffect : love.graphics.getPixelEffect,
--- getPointSize : love.graphics.getPointSize,
--- getPointStyle : love.graphics.getPointStyle,
--- getScissor : love.graphics.getScissor,
--- getShader : love.graphics.getShader,
--- getStackDepth : love.graphics.getStackDepth,
--- getStencilTest : love.graphics.getStencilTest,
--- intersectScissor : love.graphics.intersectScissor,
--- isActive : love.graphics.isActive,
--- isGammaCorrect : love.graphics.isGammaCorrect,
--- isSupported : love.graphics.isSupported,
--- isWireframe : love.graphics.isWireframe,
--- reset : love.graphics.reset,
--- setBackgroundColor : love.graphics.setBackgroundColor,
--- setBlendMode : love.graphics.setBlendMode,
--- setCanvas : love.graphics.setCanvas,
--- setColor : love.graphics.setColor,
--- setColorMask : love.graphics.setColorMask,
--- setColorMode : love.graphics.setColorMode,
--- setDefaultFilter : love.graphics.setDefaultFilter,
--- setDefaultImageFilter : love.graphics.setDefaultImageFilter,
--- setDepthMode : love.graphics.setDepthMode,
--- setFont : love.graphics.setFont,
--- setFrontFaceWinding : love.graphics.setFrontFaceWinding,
--- setInvertedStencil : love.graphics.setInvertedStencil,
--- setLine : love.graphics.setLine,
--- setLineJoin : love.graphics.setLineJoin,
--- setLineStipple : love.graphics.setLineStipple,
--- setLineStyle : love.graphics.setLineStyle,
--- setLineWidth : love.graphics.setLineWidth,
--- setMeshCullMode : love.graphics.setMeshCullMode,
--- setPixelEffect : love.graphics.setPixelEffect,
--- setPoint : love.graphics.setPoint,
--- setPointSize : love.graphics.setPointSize,
--- setPointStyle : love.graphics.setPointStyle,
--- setRenderTarget : love.graphics.setRenderTarget,
--- setScissor : love.graphics.setScissor,
--- setShader : love.graphics.setShader,
--- setStencil : love.graphics.setStencil,
--- setStencilTest : love.graphics.setStencilTest,
--- setWireframe : love.graphics.setWireframe,
--- applyTransform : love.graphics.applyTransform,
--- inverseTransformPoint : love.graphics.inverseTransformPoint,
--- origin : love.graphics.origin,
--- pop : love.graphics.pop,
--- push : love.graphics.push,
--- replaceTransform : love.graphics.replaceTransform,
--- rotate : love.graphics.rotate,
--- scale : love.graphics.scale,
--- shear : love.graphics.shear,
--- transformPoint : love.graphics.transformPoint,
--- translate : love.graphics.translate,
--- checkMode : love.graphics.checkMode,
--- getCaption : love.graphics.getCaption,
--- getDPIScale : love.graphics.getDPIScale,
--- getDimensions : love.graphics.getDimensions,
--- getHeight : love.graphics.getHeight,
--- getMode : love.graphics.getMode,
--- getModes : love.graphics.getModes,
--- getPixelDimensions : love.graphics.getPixelDimensions,
--- getPixelHeight : love.graphics.getPixelHeight,
--- getPixelWidth : love.graphics.getPixelWidth,
--- getWidth : love.graphics.getWidth,
--- hasFocus : love.graphics.hasFocus,
--- isCreated : love.graphics.isCreated,
--- setCaption : love.graphics.setCaption,
--- setIcon : love.graphics.setIcon,
--- setMode : love.graphics.setMode,
--- toggleFullscreen : love.graphics.toggleFullscreen,
--- getCanvasFormats : love.graphics.getCanvasFormats,
--- getCompressedImageFormats : love.graphics.getCompressedImageFormats,
--- getImageFormats : love.graphics.getImageFormats,
--- getMaxImageSize : love.graphics.getMaxImageSize,
--- getMaxPointSize : love.graphics.getMaxPointSize,
--- getRendererInfo : love.graphics.getRendererInfo,
--- getStats : love.graphics.getStats,
--- getSupported : love.graphics.getSupported,
--- getSystemLimit : love.graphics.getSystemLimit,
--- getSystemLimits : love.graphics.getSystemLimits,
--- getTextureTypes : love.graphics.getTextureTypes,}

--- https://love2d.org/wiki/love.image
---@alias love.image {
--- isCompressed : love.image.isCompressed,
--- newCompressedData : love.image.newCompressedData,
--- newEncodedImageData : love.image.newEncodedImageData,
--- newImageData : love.image.newImageData,}

--- https://love2d.org/wiki/love.joystick
---@alias love.joystick {
--- close : love.joystick.close,
--- getAxes : love.joystick.getAxes,
--- getAxis : love.joystick.getAxis,
--- getBall : love.joystick.getBall,
--- getGamepadMappingString : love.joystick.getGamepadMappingString,
--- getHat : love.joystick.getHat,
--- getJoystickCount : love.joystick.getJoystickCount,
--- getJoysticks : love.joystick.getJoysticks,
--- getName : love.joystick.getName,
--- getNumAxes : love.joystick.getNumAxes,
--- getNumBalls : love.joystick.getNumBalls,
--- getNumButtons : love.joystick.getNumButtons,
--- getNumHats : love.joystick.getNumHats,
--- getNumJoysticks : love.joystick.getNumJoysticks,
--- isDown : love.joystick.isDown,
--- isOpen : love.joystick.isOpen,
--- loadGamepadMappings : love.joystick.loadGamepadMappings,
--- open : love.joystick.open,
--- saveGamepadMappings : love.joystick.saveGamepadMappings,
--- setGamepadMapping : love.joystick.setGamepadMapping,}

--- https://love2d.org/wiki/love.keyboard
---@alias love.keyboard {
--- getKeyFromScancode : love.keyboard.getKeyFromScancode,
--- getKeyRepeat : love.keyboard.getKeyRepeat,
--- getScancodeFromKey : love.keyboard.getScancodeFromKey,
--- hasKeyRepeat : love.keyboard.hasKeyRepeat,
--- hasScreenKeyboard : love.keyboard.hasScreenKeyboard,
--- hasTextInput : love.keyboard.hasTextInput,
--- isDown : love.keyboard.isDown,
--- isScancodeDown : love.keyboard.isScancodeDown,
--- setKeyRepeat : love.keyboard.setKeyRepeat,
--- setTextInput : love.keyboard.setTextInput,}

--- https://love2d.org/wiki/love.math
---@alias love.math {
--- colorFromBytes : love.math.colorFromBytes,
--- colorToBytes : love.math.colorToBytes,
--- compress : love.math.compress,
--- decompress : love.math.decompress,
--- gammaToLinear : love.math.gammaToLinear,
--- getRandomSeed : love.math.getRandomSeed,
--- getRandomState : love.math.getRandomState,
--- isConvex : love.math.isConvex,
--- linearToGamma : love.math.linearToGamma,
--- newBezierCurve : love.math.newBezierCurve,
--- newRandomGenerator : love.math.newRandomGenerator,
--- newTransform : love.math.newTransform,
--- noise : love.math.noise,
--- random : love.math.random,
--- randomNormal : love.math.randomNormal,
--- setRandomSeed : love.math.setRandomSeed,
--- setRandomState : love.math.setRandomState,
--- triangulate : love.math.triangulate,}

--- https://love2d.org/wiki/love.mouse
---@alias love.mouse {
--- getCursor : love.mouse.getCursor,
--- getPosition : love.mouse.getPosition,
--- getRelativeMode : love.mouse.getRelativeMode,
--- getSystemCursor : love.mouse.getSystemCursor,
--- getX : love.mouse.getX,
--- getY : love.mouse.getY,
--- hasCursor : love.mouse.hasCursor,
--- isCursorSupported : love.mouse.isCursorSupported,
--- isDown : love.mouse.isDown,
--- isGrabbed : love.mouse.isGrabbed,
--- isVisible : love.mouse.isVisible,
--- newCursor : love.mouse.newCursor,
--- setCursor : love.mouse.setCursor,
--- setGrab : love.mouse.setGrab,
--- setGrabbed : love.mouse.setGrabbed,
--- setPosition : love.mouse.setPosition,
--- setRelativeMode : love.mouse.setRelativeMode,
--- setVisible : love.mouse.setVisible,
--- setX : love.mouse.setX,
--- setY : love.mouse.setY,}

--- https://love2d.org/wiki/love.physics
---@alias love.physics {
--- getDistance : love.physics.getDistance,
--- getMeter : love.physics.getMeter,
--- newBody : love.physics.newBody,
--- newChainShape : love.physics.newChainShape,
--- newCircleShape : love.physics.newCircleShape,
--- newDistanceJoint : love.physics.newDistanceJoint,
--- newEdgeShape : love.physics.newEdgeShape,
--- newFixture : love.physics.newFixture,
--- newFrictionJoint : love.physics.newFrictionJoint,
--- newGearJoint : love.physics.newGearJoint,
--- newMotorJoint : love.physics.newMotorJoint,
--- newMouseJoint : love.physics.newMouseJoint,
--- newPolygonShape : love.physics.newPolygonShape,
--- newPrismaticJoint : love.physics.newPrismaticJoint,
--- newPulleyJoint : love.physics.newPulleyJoint,
--- newRectangleShape : love.physics.newRectangleShape,
--- newRevoluteJoint : love.physics.newRevoluteJoint,
--- newRopeJoint : love.physics.newRopeJoint,
--- newWeldJoint : love.physics.newWeldJoint,
--- newWheelJoint : love.physics.newWheelJoint,
--- newWorld : love.physics.newWorld,
--- setMeter : love.physics.setMeter,}

--- https://love2d.org/wiki/love.sound
---@alias love.sound {
--- newDecoder : love.sound.newDecoder,
--- newSoundData : love.sound.newSoundData,}

--- https://love2d.org/wiki/love.system
---@alias love.system {
--- getClipboardText : love.system.getClipboardText,
--- getOS : love.system.getOS,
--- getPowerInfo : love.system.getPowerInfo,
--- getProcessorCount : love.system.getProcessorCount,
--- hasBackgroundMusic : love.system.hasBackgroundMusic,
--- openURL : love.system.openURL,
--- setClipboardText : love.system.setClipboardText,
--- vibrate : love.system.vibrate,}

--- https://love2d.org/wiki/love.thread
---@alias love.thread {
--- getChannel : love.thread.getChannel,
--- getThread : love.thread.getThread,
--- getThreads : love.thread.getThreads,
--- newChannel : love.thread.newChannel,
--- newThread : love.thread.newThread,}

--- https://love2d.org/wiki/love.timer
---@alias love.timer {
--- getAverageDelta : love.timer.getAverageDelta,
--- getDelta : love.timer.getDelta,
--- getFPS : love.timer.getFPS,
--- getMicroTime : love.timer.getMicroTime,
--- getTime : love.timer.getTime,
--- sleep : love.timer.sleep,
--- step : love.timer.step,}

--- https://love2d.org/wiki/love.touch
---@alias love.touch {
--- getPosition : love.touch.getPosition,
--- getPressure : love.touch.getPressure,
--- getTouches : love.touch.getTouches,}

--- https://love2d.org/wiki/love.video
---@alias love.video {
--- newVideoStream : love.video.newVideoStream,}

--- https://love2d.org/wiki/love.window
---@alias love.window {
--- close : love.window.close,
--- fromPixels : love.window.fromPixels,
--- getDPIScale : love.window.getDPIScale,
--- getDesktopDimensions : love.window.getDesktopDimensions,
--- getDimensions : love.window.getDimensions,
--- getDisplayCount : love.window.getDisplayCount,
--- getDisplayName : love.window.getDisplayName,
--- getDisplayOrientation : love.window.getDisplayOrientation,
--- getFullscreen : love.window.getFullscreen,
--- getFullscreenModes : love.window.getFullscreenModes,
--- getHeight : love.window.getHeight,
--- getIcon : love.window.getIcon,
--- getMode : love.window.getMode,
--- getPixelScale : love.window.getPixelScale,
--- getPosition : love.window.getPosition,
--- getSafeArea : love.window.getSafeArea,
--- getTitle : love.window.getTitle,
--- getVSync : love.window.getVSync,
--- getWidth : love.window.getWidth,
--- hasFocus : love.window.hasFocus,
--- hasMouseFocus : love.window.hasMouseFocus,
--- isCreated : love.window.isCreated,
--- isDisplaySleepEnabled : love.window.isDisplaySleepEnabled,
--- isMaximized : love.window.isMaximized,
--- isMinimized : love.window.isMinimized,
--- isOpen : love.window.isOpen,
--- isVisible : love.window.isVisible,
--- maximize : love.window.maximize,
--- minimize : love.window.minimize,
--- requestAttention : love.window.requestAttention,
--- restore : love.window.restore,
--- setDisplaySleepEnabled : love.window.setDisplaySleepEnabled,
--- setFullscreen : love.window.setFullscreen,
--- setIcon : love.window.setIcon,
--- setMode : love.window.setMode,
--- setPosition : love.window.setPosition,
--- setTitle : love.window.setTitle,
--- setVSync : love.window.setVSync,
--- showMessageBox : love.window.showMessageBox,
--- toPixels : love.window.toPixels,
--- updateMode : love.window.updateMode,}

-----------
-- TYPES --
-----------

--- https://love2d.org/wiki/Data
---@class love.Data: love.Object
---@field clone love.Data.clone,
---@field getFFIPointer love.Data.getFFIPointer,
---@field getPointer love.Data.getPointer,
---@field getSize love.Data.getSize,
---@field getString love.Data.getString,

--- https://love2d.org/wiki/Object
---@class love.Object
---@field release love.Object.release,
---@field type love.Object.type,
---@field typeOf love.Object.typeOf,

--- https://love2d.org/wiki/Variant
---@class love.Variant

--- https://love2d.org/wiki/RecordingDevice
---@class love.audio.RecordingDevice: love.Object
---@field getBitDepth love.audio.RecordingDevice.getBitDepth,
---@field getChannelCount love.audio.RecordingDevice.getChannelCount,
---@field getData love.audio.RecordingDevice.getData,
---@field getName love.audio.RecordingDevice.getName,
---@field getSampleCount love.audio.RecordingDevice.getSampleCount,
---@field getSampleRate love.audio.RecordingDevice.getSampleRate,
---@field isRecording love.audio.RecordingDevice.isRecording,
---@field start love.audio.RecordingDevice.start,
---@field stop love.audio.RecordingDevice.stop,

--- https://love2d.org/wiki/Source
---@class love.audio.Source: love.Object
---@field clone love.audio.Source.clone,
---@field getActiveEffects love.audio.Source.getActiveEffects,
---@field getAirAbsorption love.audio.Source.getAirAbsorption,
---@field getAttenuationDistances love.audio.Source.getAttenuationDistances,
---@field getChannelCount love.audio.Source.getChannelCount,
---@field getChannels love.audio.Source.getChannels,
---@field getCone love.audio.Source.getCone,
---@field getDirection love.audio.Source.getDirection,
---@field getDistance love.audio.Source.getDistance,
---@field getDuration love.audio.Source.getDuration,
---@field getEffect love.audio.Source.getEffect,
---@field getFilter love.audio.Source.getFilter,
---@field getFreeBufferCount love.audio.Source.getFreeBufferCount,
---@field getPitch love.audio.Source.getPitch,
---@field getPosition love.audio.Source.getPosition,
---@field getRolloff love.audio.Source.getRolloff,
---@field getType love.audio.Source.getType,
---@field getVelocity love.audio.Source.getVelocity,
---@field getVolume love.audio.Source.getVolume,
---@field getVolumeLimits love.audio.Source.getVolumeLimits,
---@field isLooping love.audio.Source.isLooping,
---@field isPaused love.audio.Source.isPaused,
---@field isPlaying love.audio.Source.isPlaying,
---@field isRelative love.audio.Source.isRelative,
---@field isStatic love.audio.Source.isStatic,
---@field isStopped love.audio.Source.isStopped,
---@field pause love.audio.Source.pause,
---@field play love.audio.Source.play,
---@field queue love.audio.Source.queue,
---@field resume love.audio.Source.resume,
---@field rewind love.audio.Source.rewind,
---@field seek love.audio.Source.seek,
---@field setAirAbsorption love.audio.Source.setAirAbsorption,
---@field setAttenuationDistances love.audio.Source.setAttenuationDistances,
---@field setCone love.audio.Source.setCone,
---@field setDirection love.audio.Source.setDirection,
---@field setDistance love.audio.Source.setDistance,
---@field setEffect love.audio.Source.setEffect,
---@field setFilter love.audio.Source.setFilter,
---@field setLooping love.audio.Source.setLooping,
---@field setPitch love.audio.Source.setPitch,
---@field setPosition love.audio.Source.setPosition,
---@field setRelative love.audio.Source.setRelative,
---@field setRolloff love.audio.Source.setRolloff,
---@field setVelocity love.audio.Source.setVelocity,
---@field setVolume love.audio.Source.setVolume,
---@field setVolumeLimits love.audio.Source.setVolumeLimits,
---@field stop love.audio.Source.stop,
---@field tell love.audio.Source.tell,

--- https://love2d.org/wiki/ByteData
---@class love.data.ByteData: love.Object, love.Data
---@field setString love.data.ByteData.setString,

--- https://love2d.org/wiki/CompressedData
---@class love.data.CompressedData: love.Data, love.Object
---@field getFormat love.data.CompressedData.getFormat,

--- https://love2d.org/wiki/DroppedFile
---@class love.filesystem.DroppedFile: love.filesystem.File, love.Object

--- https://love2d.org/wiki/File
---@class love.filesystem.File: love.Object

--- https://love2d.org/wiki/FileData
---@class love.filesystem.FileData: love.Data, love.Object
---@field getExtension love.filesystem.FileData.getExtension,
---@field getFilename love.filesystem.FileData.getFilename,

--- https://love2d.org/wiki/FontData
---@class love.font.FontData: love.Data, love.Object

--- https://love2d.org/wiki/GlyphData
---@class love.font.GlyphData: love.Data, love.Object
---@field getAdvance love.font.GlyphData.getAdvance,
---@field getBearing love.font.GlyphData.getBearing,
---@field getBoundingBox love.font.GlyphData.getBoundingBox,
---@field getDimensions love.font.GlyphData.getDimensions,
---@field getFormat love.font.GlyphData.getFormat,
---@field getGlyph love.font.GlyphData.getGlyph,
---@field getGlyphString love.font.GlyphData.getGlyphString,
---@field getHeight love.font.GlyphData.getHeight,
---@field getWidth love.font.GlyphData.getWidth,

--- https://love2d.org/wiki/Rasterizer
---@class love.font.Rasterizer: love.Object
---@field getAdvance love.font.Rasterizer.getAdvance,
---@field getAscent love.font.Rasterizer.getAscent,
---@field getDescent love.font.Rasterizer.getDescent,
---@field getGlyphCount love.font.Rasterizer.getGlyphCount,
---@field getGlyphData love.font.Rasterizer.getGlyphData,
---@field getHeight love.font.Rasterizer.getHeight,
---@field getLineHeight love.font.Rasterizer.getLineHeight,
---@field hasGlyphs love.font.Rasterizer.hasGlyphs,

--- https://love2d.org/wiki/Canvas
---@class love.graphics.Canvas: love.graphics.Texture, love.graphics.Drawable, love.Object
---@field clear love.graphics.Canvas.clear,
---@field generateMipmaps love.graphics.Canvas.generateMipmaps,
---@field getFSAA love.graphics.Canvas.getFSAA,
---@field getFormat love.graphics.Canvas.getFormat,
---@field getImageData love.graphics.Canvas.getImageData,
---@field getMSAA love.graphics.Canvas.getMSAA,
---@field getMipmapMode love.graphics.Canvas.getMipmapMode,
---@field getPixel love.graphics.Canvas.getPixel,
---@field newImageData love.graphics.Canvas.newImageData,
---@field renderTo love.graphics.Canvas.renderTo,

--- https://love2d.org/wiki/Drawable
---@class love.graphics.Drawable: love.Object

--- https://love2d.org/wiki/Font
---@class love.graphics.Font: love.Object
---@field getAscent love.graphics.Font.getAscent,
---@field getBaseline love.graphics.Font.getBaseline,
---@field getDPIScale love.graphics.Font.getDPIScale,
---@field getDescent love.graphics.Font.getDescent,
---@field getFilter love.graphics.Font.getFilter,
---@field getHeight love.graphics.Font.getHeight,
---@field getKerning love.graphics.Font.getKerning,
---@field getLineHeight love.graphics.Font.getLineHeight,
---@field getWidth love.graphics.Font.getWidth,
---@field getWrap love.graphics.Font.getWrap,
---@field hasGlyphs love.graphics.Font.hasGlyphs,
---@field setFallbacks love.graphics.Font.setFallbacks,
---@field setFilter love.graphics.Font.setFilter,
---@field setLineHeight love.graphics.Font.setLineHeight,

--- https://love2d.org/wiki/Framebuffer
---@class love.graphics.Framebuffer: love.graphics.Drawable, love.Object
---@field getImageData love.graphics.Framebuffer.getImageData,
---@field getWrap love.graphics.Framebuffer.getWrap,
---@field renderTo love.graphics.Framebuffer.renderTo,
---@field setWrap love.graphics.Framebuffer.setWrap,

--- https://love2d.org/wiki/Image
---@class love.graphics.Image: love.graphics.Texture, love.graphics.Drawable, love.Object

--- https://love2d.org/wiki/Mesh
---@class love.graphics.Mesh: love.graphics.Drawable, love.Object
---@field attachAttribute love.graphics.Mesh.attachAttribute,
---@field detachAttribute love.graphics.Mesh.detachAttribute,
---@field flush love.graphics.Mesh.flush,
---@field getDrawMode love.graphics.Mesh.getDrawMode,
---@field getDrawRange love.graphics.Mesh.getDrawRange,
---@field getImage love.graphics.Mesh.getImage,
---@field getTexture love.graphics.Mesh.getTexture,
---@field getVertex love.graphics.Mesh.getVertex,
---@field getVertexAttribute love.graphics.Mesh.getVertexAttribute,
---@field getVertexCount love.graphics.Mesh.getVertexCount,
---@field getVertexFormat love.graphics.Mesh.getVertexFormat,
---@field getVertexMap love.graphics.Mesh.getVertexMap,
---@field getVertices love.graphics.Mesh.getVertices,
---@field hasVertexColors love.graphics.Mesh.hasVertexColors,
---@field isAttributeEnabled love.graphics.Mesh.isAttributeEnabled,
---@field setAttributeEnabled love.graphics.Mesh.setAttributeEnabled,
---@field setDrawMode love.graphics.Mesh.setDrawMode,
---@field setDrawRange love.graphics.Mesh.setDrawRange,
---@field setImage love.graphics.Mesh.setImage,
---@field setTexture love.graphics.Mesh.setTexture,
---@field setVertex love.graphics.Mesh.setVertex,
---@field setVertexAttribute love.graphics.Mesh.setVertexAttribute,
---@field setVertexColors love.graphics.Mesh.setVertexColors,
---@field setVertexMap love.graphics.Mesh.setVertexMap,
---@field setVertices love.graphics.Mesh.setVertices,

--- https://love2d.org/wiki/ParticleSystem
---@class love.graphics.ParticleSystem: love.graphics.Drawable, love.Object
---@field clone love.graphics.ParticleSystem.clone,
---@field count love.graphics.ParticleSystem.count,
---@field emit love.graphics.ParticleSystem.emit,
---@field getAreaSpread love.graphics.ParticleSystem.getAreaSpread,
---@field getBufferSize love.graphics.ParticleSystem.getBufferSize,
---@field getColors love.graphics.ParticleSystem.getColors,
---@field getCount love.graphics.ParticleSystem.getCount,
---@field getDirection love.graphics.ParticleSystem.getDirection,
---@field getEmissionArea love.graphics.ParticleSystem.getEmissionArea,
---@field getEmissionRate love.graphics.ParticleSystem.getEmissionRate,
---@field getEmitterLifetime love.graphics.ParticleSystem.getEmitterLifetime,
---@field getImage love.graphics.ParticleSystem.getImage,
---@field getInsertMode love.graphics.ParticleSystem.getInsertMode,
---@field getLinearAcceleration love.graphics.ParticleSystem.getLinearAcceleration,
---@field getLinearDamping love.graphics.ParticleSystem.getLinearDamping,
---@field getOffset love.graphics.ParticleSystem.getOffset,
---@field getOffsetX love.graphics.ParticleSystem.getOffsetX,
---@field getOffsetY love.graphics.ParticleSystem.getOffsetY,
---@field getParticleLifetime love.graphics.ParticleSystem.getParticleLifetime,
---@field getPosition love.graphics.ParticleSystem.getPosition,
---@field getQuads love.graphics.ParticleSystem.getQuads,
---@field getRadialAcceleration love.graphics.ParticleSystem.getRadialAcceleration,
---@field getRotation love.graphics.ParticleSystem.getRotation,
---@field getSizeVariation love.graphics.ParticleSystem.getSizeVariation,
---@field getSizes love.graphics.ParticleSystem.getSizes,
---@field getSpeed love.graphics.ParticleSystem.getSpeed,
---@field getSpin love.graphics.ParticleSystem.getSpin,
---@field getSpinVariation love.graphics.ParticleSystem.getSpinVariation,
---@field getSpread love.graphics.ParticleSystem.getSpread,
---@field getTangentialAcceleration love.graphics.ParticleSystem.getTangentialAcceleration,
---@field getTexture love.graphics.ParticleSystem.getTexture,
---@field getX love.graphics.ParticleSystem.getX,
---@field getY love.graphics.ParticleSystem.getY,
---@field hasRelativeRotation love.graphics.ParticleSystem.hasRelativeRotation,
---@field isActive love.graphics.ParticleSystem.isActive,
---@field isEmpty love.graphics.ParticleSystem.isEmpty,
---@field isFull love.graphics.ParticleSystem.isFull,
---@field isPaused love.graphics.ParticleSystem.isPaused,
---@field isStopped love.graphics.ParticleSystem.isStopped,
---@field moveTo love.graphics.ParticleSystem.moveTo,
---@field pause love.graphics.ParticleSystem.pause,
---@field reset love.graphics.ParticleSystem.reset,
---@field setAreaSpread love.graphics.ParticleSystem.setAreaSpread,
---@field setBufferSize love.graphics.ParticleSystem.setBufferSize,
---@field setColor love.graphics.ParticleSystem.setColor,
---@field setColors love.graphics.ParticleSystem.setColors,
---@field setDirection love.graphics.ParticleSystem.setDirection,
---@field setEmissionArea love.graphics.ParticleSystem.setEmissionArea,
---@field setEmissionRate love.graphics.ParticleSystem.setEmissionRate,
---@field setEmitterLifetime love.graphics.ParticleSystem.setEmitterLifetime,
---@field setGravity love.graphics.ParticleSystem.setGravity,
---@field setImage love.graphics.ParticleSystem.setImage,
---@field setInsertMode love.graphics.ParticleSystem.setInsertMode,
---@field setLifetime love.graphics.ParticleSystem.setLifetime,
---@field setLinearAcceleration love.graphics.ParticleSystem.setLinearAcceleration,
---@field setLinearDamping love.graphics.ParticleSystem.setLinearDamping,
---@field setOffset love.graphics.ParticleSystem.setOffset,
---@field setParticleLife love.graphics.ParticleSystem.setParticleLife,
---@field setParticleLifetime love.graphics.ParticleSystem.setParticleLifetime,
---@field setPosition love.graphics.ParticleSystem.setPosition,
---@field setQuads love.graphics.ParticleSystem.setQuads,
---@field setRadialAcceleration love.graphics.ParticleSystem.setRadialAcceleration,
---@field setRelativeRotation love.graphics.ParticleSystem.setRelativeRotation,
---@field setRotation love.graphics.ParticleSystem.setRotation,
---@field setSize love.graphics.ParticleSystem.setSize,
---@field setSizeVariation love.graphics.ParticleSystem.setSizeVariation,
---@field setSizes love.graphics.ParticleSystem.setSizes,
---@field setSpeed love.graphics.ParticleSystem.setSpeed,
---@field setSpin love.graphics.ParticleSystem.setSpin,
---@field setSpinVariation love.graphics.ParticleSystem.setSpinVariation,
---@field setSpread love.graphics.ParticleSystem.setSpread,
---@field setSprite love.graphics.ParticleSystem.setSprite,
---@field setTangentialAcceleration love.graphics.ParticleSystem.setTangentialAcceleration,
---@field setTexture love.graphics.ParticleSystem.setTexture,
---@field start love.graphics.ParticleSystem.start,
---@field stop love.graphics.ParticleSystem.stop,
---@field update love.graphics.ParticleSystem.update,

--- https://love2d.org/wiki/PixelEffect
---@class love.graphics.PixelEffect: love.Object
---@field getWarnings love.graphics.PixelEffect.getWarnings,
---@field send love.graphics.PixelEffect.send,

--- https://love2d.org/wiki/Quad
---@class love.graphics.Quad: love.Object
---@field flip love.graphics.Quad.flip,
---@field getLayer love.graphics.Quad.getLayer,
---@field getTextureDimensions love.graphics.Quad.getTextureDimensions,
---@field getViewport love.graphics.Quad.getViewport,
---@field setLayer love.graphics.Quad.setLayer,
---@field setViewport love.graphics.Quad.setViewport,

--- https://love2d.org/wiki/Shader
---@class love.graphics.Shader: love.Object
---@field getExternVariable love.graphics.Shader.getExternVariable,
---@field getWarnings love.graphics.Shader.getWarnings,
---@field hasUniform love.graphics.Shader.hasUniform,
---@field send love.graphics.Shader.send,
---@field sendColor love.graphics.Shader.sendColor,

--- https://love2d.org/wiki/SpriteBatch
---@class love.graphics.SpriteBatch: love.graphics.Drawable, love.Object
---@field add love.graphics.SpriteBatch.add,
---@field addLayer love.graphics.SpriteBatch.addLayer,
---@field addq love.graphics.SpriteBatch.addq,
---@field attachAttribute love.graphics.SpriteBatch.attachAttribute,
---@field bind love.graphics.SpriteBatch.bind,
---@field clear love.graphics.SpriteBatch.clear,
---@field flush love.graphics.SpriteBatch.flush,
---@field getBufferSize love.graphics.SpriteBatch.getBufferSize,
---@field getColor love.graphics.SpriteBatch.getColor,
---@field getCount love.graphics.SpriteBatch.getCount,
---@field getImage love.graphics.SpriteBatch.getImage,
---@field getTexture love.graphics.SpriteBatch.getTexture,
---@field set love.graphics.SpriteBatch.set,
---@field setBufferSize love.graphics.SpriteBatch.setBufferSize,
---@field setColor love.graphics.SpriteBatch.setColor,
---@field setDrawRange love.graphics.SpriteBatch.setDrawRange,
---@field setImage love.graphics.SpriteBatch.setImage,
---@field setLayer love.graphics.SpriteBatch.setLayer,
---@field setTexture love.graphics.SpriteBatch.setTexture,
---@field setq love.graphics.SpriteBatch.setq,
---@field unbind love.graphics.SpriteBatch.unbind,

--- https://love2d.org/wiki/Text
---@class love.graphics.Text: love.graphics.Drawable, love.Object
---@field add love.graphics.Text.add,
---@field addf love.graphics.Text.addf,
---@field clear love.graphics.Text.clear,
---@field getDimensions love.graphics.Text.getDimensions,
---@field getFont love.graphics.Text.getFont,
---@field getHeight love.graphics.Text.getHeight,
---@field getWidth love.graphics.Text.getWidth,
---@field set love.graphics.Text.set,
---@field setFont love.graphics.Text.setFont,
---@field setf love.graphics.Text.setf,

--- https://love2d.org/wiki/Texture
---@class love.graphics.Texture: love.graphics.Drawable, love.Object
---@field getDPIScale love.graphics.Texture.getDPIScale,
---@field getDepth love.graphics.Texture.getDepth,
---@field getDepthSampleMode love.graphics.Texture.getDepthSampleMode,
---@field getDimensions love.graphics.Texture.getDimensions,
---@field getFilter love.graphics.Texture.getFilter,
---@field getFormat love.graphics.Texture.getFormat,
---@field getHeight love.graphics.Texture.getHeight,
---@field getLayerCount love.graphics.Texture.getLayerCount,
---@field getMipmapCount love.graphics.Texture.getMipmapCount,
---@field getMipmapFilter love.graphics.Texture.getMipmapFilter,
---@field getPixelDimensions love.graphics.Texture.getPixelDimensions,
---@field getPixelHeight love.graphics.Texture.getPixelHeight,
---@field getPixelWidth love.graphics.Texture.getPixelWidth,
---@field getTextureType love.graphics.Texture.getTextureType,
---@field getWidth love.graphics.Texture.getWidth,
---@field getWrap love.graphics.Texture.getWrap,
---@field isReadable love.graphics.Texture.isReadable,
---@field setDepthSampleMode love.graphics.Texture.setDepthSampleMode,
---@field setFilter love.graphics.Texture.setFilter,
---@field setMipmapFilter love.graphics.Texture.setMipmapFilter,
---@field setWrap love.graphics.Texture.setWrap,

--- https://love2d.org/wiki/Video
---@class love.graphics.Video: love.graphics.Drawable, love.Object
---@field getDimensions love.graphics.Video.getDimensions,
---@field getFilter love.graphics.Video.getFilter,
---@field getHeight love.graphics.Video.getHeight,
---@field getSource love.graphics.Video.getSource,
---@field getStream love.graphics.Video.getStream,
---@field getWidth love.graphics.Video.getWidth,
---@field isPlaying love.graphics.Video.isPlaying,
---@field pause love.graphics.Video.pause,
---@field play love.graphics.Video.play,
---@field rewind love.graphics.Video.rewind,
---@field seek love.graphics.Video.seek,
---@field setFilter love.graphics.Video.setFilter,
---@field setSource love.graphics.Video.setSource,
---@field tell love.graphics.Video.tell,

--- https://love2d.org/wiki/CompressedImageData
---@class love.image.CompressedImageData: love.Data, love.Object
---@field getDimensions love.image.CompressedImageData.getDimensions,
---@field getFormat love.image.CompressedImageData.getFormat,
---@field getHeight love.image.CompressedImageData.getHeight,
---@field getMipmapCount love.image.CompressedImageData.getMipmapCount,
---@field getWidth love.image.CompressedImageData.getWidth,

--- https://love2d.org/wiki/ImageData
---@class love.image.ImageData: love.Data, love.Object
---@field encode love.image.ImageData.encode,
---@field getDimensions love.image.ImageData.getDimensions,
---@field getFormat love.image.ImageData.getFormat,
---@field getHeight love.image.ImageData.getHeight,
---@field getPixel love.image.ImageData.getPixel,
---@field getString love.image.ImageData.getString,
---@field getWidth love.image.ImageData.getWidth,
---@field mapPixel love.image.ImageData.mapPixel,
---@field paste love.image.ImageData.paste,
---@field setPixel love.image.ImageData.setPixel,

--- https://love2d.org/wiki/Joystick
---@class love.joystick.Joystick: love.Object
---@field getAxes love.joystick.Joystick.getAxes,
---@field getAxis love.joystick.Joystick.getAxis,
---@field getAxisCount love.joystick.Joystick.getAxisCount,
---@field getButtonCount love.joystick.Joystick.getButtonCount,
---@field getDeviceInfo love.joystick.Joystick.getDeviceInfo,
---@field getGUID love.joystick.Joystick.getGUID,
---@field getGamepadAxis love.joystick.Joystick.getGamepadAxis,
---@field getGamepadMapping love.joystick.Joystick.getGamepadMapping,
---@field getGamepadMappingString love.joystick.Joystick.getGamepadMappingString,
---@field getHat love.joystick.Joystick.getHat,
---@field getHatCount love.joystick.Joystick.getHatCount,
---@field getID love.joystick.Joystick.getID,
---@field getName love.joystick.Joystick.getName,
---@field getVibration love.joystick.Joystick.getVibration,
---@field isConnected love.joystick.Joystick.isConnected,
---@field isDown love.joystick.Joystick.isDown,
---@field isGamepad love.joystick.Joystick.isGamepad,
---@field isGamepadDown love.joystick.Joystick.isGamepadDown,
---@field isVibrationSupported love.joystick.Joystick.isVibrationSupported,
---@field setVibration love.joystick.Joystick.setVibration,

--- https://love2d.org/wiki/BezierCurve
---@class love.math.BezierCurve: love.Object
---@field evaluate love.math.BezierCurve.evaluate,
---@field getControlPoint love.math.BezierCurve.getControlPoint,
---@field getControlPointCount love.math.BezierCurve.getControlPointCount,
---@field getDegree love.math.BezierCurve.getDegree,
---@field getDerivative love.math.BezierCurve.getDerivative,
---@field getSegment love.math.BezierCurve.getSegment,
---@field insertControlPoint love.math.BezierCurve.insertControlPoint,
---@field removeControlPoint love.math.BezierCurve.removeControlPoint,
---@field render love.math.BezierCurve.render,
---@field renderSegment love.math.BezierCurve.renderSegment,
---@field rotate love.math.BezierCurve.rotate,
---@field scale love.math.BezierCurve.scale,
---@field setControlPoint love.math.BezierCurve.setControlPoint,
---@field translate love.math.BezierCurve.translate,

--- https://love2d.org/wiki/RandomGenerator
---@class love.math.RandomGenerator: love.Object
---@field getSeed love.math.RandomGenerator.getSeed,
---@field getState love.math.RandomGenerator.getState,
---@field random love.math.RandomGenerator.random,
---@field randomNormal love.math.RandomGenerator.randomNormal,
---@field setSeed love.math.RandomGenerator.setSeed,
---@field setState love.math.RandomGenerator.setState,

--- https://love2d.org/wiki/Transform
---@class love.math.Transform: love.Object
---@field apply love.math.Transform.apply,
---@field clone love.math.Transform.clone,
---@field getMatrix love.math.Transform.getMatrix,
---@field inverse love.math.Transform.inverse,
---@field inverseTransformPoint love.math.Transform.inverseTransformPoint,
---@field isAffine2DTransform love.math.Transform.isAffine2DTransform,
---@field reset love.math.Transform.reset,
---@field rotate love.math.Transform.rotate,
---@field scale love.math.Transform.scale,
---@field setMatrix love.math.Transform.setMatrix,
---@field setTransformation love.math.Transform.setTransformation,
---@field shear love.math.Transform.shear,
---@field transformPoint love.math.Transform.transformPoint,
---@field translate love.math.Transform.translate,

--- https://love2d.org/wiki/Cursor
---@class love.mouse.Cursor: love.Object
---@field getType love.mouse.Cursor.getType,

--- https://love2d.org/wiki/Body
---@class love.physics.Body: love.Object
---@field applyAngularImpulse love.physics.Body.applyAngularImpulse,
---@field applyForce love.physics.Body.applyForce,
---@field applyImpulse love.physics.Body.applyImpulse,
---@field applyLinearImpulse love.physics.Body.applyLinearImpulse,
---@field applyTorque love.physics.Body.applyTorque,
---@field destroy love.physics.Body.destroy,
---@field getAllowSleeping love.physics.Body.getAllowSleeping,
---@field getAngle love.physics.Body.getAngle,
---@field getAngularDamping love.physics.Body.getAngularDamping,
---@field getAngularVelocity love.physics.Body.getAngularVelocity,
---@field getContactList love.physics.Body.getContactList,
---@field getContacts love.physics.Body.getContacts,
---@field getFixtureList love.physics.Body.getFixtureList,
---@field getFixtures love.physics.Body.getFixtures,
---@field getGravityScale love.physics.Body.getGravityScale,
---@field getInertia love.physics.Body.getInertia,
---@field getJointList love.physics.Body.getJointList,
---@field getJoints love.physics.Body.getJoints,
---@field getLinearDamping love.physics.Body.getLinearDamping,
---@field getLinearVelocity love.physics.Body.getLinearVelocity,
---@field getLinearVelocityFromLocalPoint love.physics.Body.getLinearVelocityFromLocalPoint,
---@field getLinearVelocityFromWorldPoint love.physics.Body.getLinearVelocityFromWorldPoint,
---@field getLocalCenter love.physics.Body.getLocalCenter,
---@field getLocalPoint love.physics.Body.getLocalPoint,
---@field getLocalPoints love.physics.Body.getLocalPoints,
---@field getLocalVector love.physics.Body.getLocalVector,
---@field getMass love.physics.Body.getMass,
---@field getMassData love.physics.Body.getMassData,
---@field getPosition love.physics.Body.getPosition,
---@field getType love.physics.Body.getType,
---@field getUserData love.physics.Body.getUserData,
---@field getWorld love.physics.Body.getWorld,
---@field getWorldCenter love.physics.Body.getWorldCenter,
---@field getWorldPoint love.physics.Body.getWorldPoint,
---@field getWorldPoints love.physics.Body.getWorldPoints,
---@field getWorldVector love.physics.Body.getWorldVector,
---@field getX love.physics.Body.getX,
---@field getY love.physics.Body.getY,
---@field isActive love.physics.Body.isActive,
---@field isAwake love.physics.Body.isAwake,
---@field isBullet love.physics.Body.isBullet,
---@field isDestroyed love.physics.Body.isDestroyed,
---@field isDynamic love.physics.Body.isDynamic,
---@field isFixedRotation love.physics.Body.isFixedRotation,
---@field isFrozen love.physics.Body.isFrozen,
---@field isSleeping love.physics.Body.isSleeping,
---@field isSleepingAllowed love.physics.Body.isSleepingAllowed,
---@field isStatic love.physics.Body.isStatic,
---@field isTouching love.physics.Body.isTouching,
---@field putToSleep love.physics.Body.putToSleep,
---@field resetMassData love.physics.Body.resetMassData,
---@field setActive love.physics.Body.setActive,
---@field setAllowSleeping love.physics.Body.setAllowSleeping,
---@field setAngle love.physics.Body.setAngle,
---@field setAngularDamping love.physics.Body.setAngularDamping,
---@field setAngularVelocity love.physics.Body.setAngularVelocity,
---@field setAwake love.physics.Body.setAwake,
---@field setBullet love.physics.Body.setBullet,
---@field setFixedRotation love.physics.Body.setFixedRotation,
---@field setGravityScale love.physics.Body.setGravityScale,
---@field setInertia love.physics.Body.setInertia,
---@field setLinearDamping love.physics.Body.setLinearDamping,
---@field setLinearVelocity love.physics.Body.setLinearVelocity,
---@field setMass love.physics.Body.setMass,
---@field setMassData love.physics.Body.setMassData,
---@field setMassFromShapes love.physics.Body.setMassFromShapes,
---@field setPosition love.physics.Body.setPosition,
---@field setSleepingAllowed love.physics.Body.setSleepingAllowed,
---@field setType love.physics.Body.setType,
---@field setUserData love.physics.Body.setUserData,
---@field setX love.physics.Body.setX,
---@field setY love.physics.Body.setY,
---@field wakeUp love.physics.Body.wakeUp,

--- https://love2d.org/wiki/Contact
---@class love.physics.Contact: love.Object
---@field getChildren love.physics.Contact.getChildren,
---@field getFixtures love.physics.Contact.getFixtures,
---@field getFriction love.physics.Contact.getFriction,
---@field getNormal love.physics.Contact.getNormal,
---@field getPosition love.physics.Contact.getPosition,
---@field getPositions love.physics.Contact.getPositions,
---@field getRestitution love.physics.Contact.getRestitution,
---@field getSeparation love.physics.Contact.getSeparation,
---@field getVelocity love.physics.Contact.getVelocity,
---@field isEnabled love.physics.Contact.isEnabled,
---@field isTouching love.physics.Contact.isTouching,
---@field resetFriction love.physics.Contact.resetFriction,
---@field resetRestitution love.physics.Contact.resetRestitution,
---@field setEnabled love.physics.Contact.setEnabled,
---@field setFriction love.physics.Contact.setFriction,
---@field setRestitution love.physics.Contact.setRestitution,

--- https://love2d.org/wiki/Fixture
---@class love.physics.Fixture: love.Object
---@field destroy love.physics.Fixture.destroy,
---@field getBody love.physics.Fixture.getBody,
---@field getBoundingBox love.physics.Fixture.getBoundingBox,
---@field getCategory love.physics.Fixture.getCategory,
---@field getDensity love.physics.Fixture.getDensity,
---@field getFilterData love.physics.Fixture.getFilterData,
---@field getFriction love.physics.Fixture.getFriction,
---@field getGroupIndex love.physics.Fixture.getGroupIndex,
---@field getMask love.physics.Fixture.getMask,
---@field getMassData love.physics.Fixture.getMassData,
---@field getRestitution love.physics.Fixture.getRestitution,
---@field getShape love.physics.Fixture.getShape,
---@field getUserData love.physics.Fixture.getUserData,
---@field isDestroyed love.physics.Fixture.isDestroyed,
---@field isSensor love.physics.Fixture.isSensor,
---@field rayCast love.physics.Fixture.rayCast,
---@field setCategory love.physics.Fixture.setCategory,
---@field setDensity love.physics.Fixture.setDensity,
---@field setFilterData love.physics.Fixture.setFilterData,
---@field setFriction love.physics.Fixture.setFriction,
---@field setGroupIndex love.physics.Fixture.setGroupIndex,
---@field setMask love.physics.Fixture.setMask,
---@field setRestitution love.physics.Fixture.setRestitution,
---@field setSensor love.physics.Fixture.setSensor,
---@field setUserData love.physics.Fixture.setUserData,
---@field testPoint love.physics.Fixture.testPoint,

--- https://love2d.org/wiki/Joint
---@class love.physics.Joint: love.Object
---@field destroy love.physics.Joint.destroy,
---@field getAnchors love.physics.Joint.getAnchors,
---@field getBodies love.physics.Joint.getBodies,
---@field getCollideConnected love.physics.Joint.getCollideConnected,
---@field getReactionForce love.physics.Joint.getReactionForce,
---@field getReactionTorque love.physics.Joint.getReactionTorque,
---@field getType love.physics.Joint.getType,
---@field getUserData love.physics.Joint.getUserData,
---@field isDestroyed love.physics.Joint.isDestroyed,
---@field setCollideConnected love.physics.Joint.setCollideConnected,
---@field setUserData love.physics.Joint.setUserData,

--- https://love2d.org/wiki/Shape
---@class love.physics.Shape: love.Object
---@field computeAABB love.physics.Shape.computeAABB,
---@field computeMass love.physics.Shape.computeMass,
---@field destroy love.physics.Shape.destroy,
---@field getBody love.physics.Shape.getBody,
---@field getBoundingBox love.physics.Shape.getBoundingBox,
---@field getCategory love.physics.Shape.getCategory,
---@field getCategoryBits love.physics.Shape.getCategoryBits,
---@field getChildCount love.physics.Shape.getChildCount,
---@field getData love.physics.Shape.getData,
---@field getDensity love.physics.Shape.getDensity,
---@field getFilterData love.physics.Shape.getFilterData,
---@field getFriction love.physics.Shape.getFriction,
---@field getMask love.physics.Shape.getMask,
---@field getRadius love.physics.Shape.getRadius,
---@field getRestitution love.physics.Shape.getRestitution,
---@field getType love.physics.Shape.getType,
---@field isSensor love.physics.Shape.isSensor,
---@field rayCast love.physics.Shape.rayCast,
---@field setCategory love.physics.Shape.setCategory,
---@field setData love.physics.Shape.setData,
---@field setDensity love.physics.Shape.setDensity,
---@field setFilterData love.physics.Shape.setFilterData,
---@field setFriction love.physics.Shape.setFriction,
---@field setMask love.physics.Shape.setMask,
---@field setRestitution love.physics.Shape.setRestitution,
---@field setSensor love.physics.Shape.setSensor,
---@field testPoint love.physics.Shape.testPoint,
---@field testSegment love.physics.Shape.testSegment,

--- https://love2d.org/wiki/World
---@class love.physics.World: love.Object
---@field destroy love.physics.World.destroy,
---@field getAllowSleeping love.physics.World.getAllowSleeping,
---@field getBodies love.physics.World.getBodies,
---@field getBodyCount love.physics.World.getBodyCount,
---@field getBodyList love.physics.World.getBodyList,
---@field getCallbacks love.physics.World.getCallbacks,
---@field getContactCount love.physics.World.getContactCount,
---@field getContactFilter love.physics.World.getContactFilter,
---@field getContactList love.physics.World.getContactList,
---@field getContacts love.physics.World.getContacts,
---@field getGravity love.physics.World.getGravity,
---@field getJointCount love.physics.World.getJointCount,
---@field getJointList love.physics.World.getJointList,
---@field getJoints love.physics.World.getJoints,
---@field isAllowSleep love.physics.World.isAllowSleep,
---@field isDestroyed love.physics.World.isDestroyed,
---@field isLocked love.physics.World.isLocked,
---@field isSleepingAllowed love.physics.World.isSleepingAllowed,
---@field queryBoundingBox love.physics.World.queryBoundingBox,
---@field rayCast love.physics.World.rayCast,
---@field setAllowSleep love.physics.World.setAllowSleep,
---@field setAllowSleeping love.physics.World.setAllowSleeping,
---@field setCallbacks love.physics.World.setCallbacks,
---@field setContactFilter love.physics.World.setContactFilter,
---@field setGravity love.physics.World.setGravity,
---@field setMeter love.physics.World.setMeter,
---@field setSleepingAllowed love.physics.World.setSleepingAllowed,
---@field translateOrigin love.physics.World.translateOrigin,
---@field update love.physics.World.update,

--- https://love2d.org/wiki/Decoder
---@class love.sound.Decoder: love.Object
---@field clone love.sound.Decoder.clone,
---@field decode love.sound.Decoder.decode,
---@field getBitDepth love.sound.Decoder.getBitDepth,
---@field getBits love.sound.Decoder.getBits,
---@field getChannelCount love.sound.Decoder.getChannelCount,
---@field getChannels love.sound.Decoder.getChannels,
---@field getDuration love.sound.Decoder.getDuration,
---@field getSampleRate love.sound.Decoder.getSampleRate,
---@field seek love.sound.Decoder.seek,

--- https://love2d.org/wiki/SoundData
---@class love.sound.SoundData: love.Data, love.Object
---@field getBitDepth love.sound.SoundData.getBitDepth,
---@field getBits love.sound.SoundData.getBits,
---@field getChannelCount love.sound.SoundData.getChannelCount,
---@field getChannels love.sound.SoundData.getChannels,
---@field getDuration love.sound.SoundData.getDuration,
---@field getSample love.sound.SoundData.getSample,
---@field getSampleCount love.sound.SoundData.getSampleCount,
---@field getSampleRate love.sound.SoundData.getSampleRate,
---@field setSample love.sound.SoundData.setSample,

--- https://love2d.org/wiki/Channel
---@class love.thread.Channel: love.Object
---@field clear love.thread.Channel.clear,
---@field demand love.thread.Channel.demand,
---@field getCount love.thread.Channel.getCount,
---@field hasRead love.thread.Channel.hasRead,
---@field peek love.thread.Channel.peek,
---@field performAtomic love.thread.Channel.performAtomic,
---@field pop love.thread.Channel.pop,
---@field push love.thread.Channel.push,
---@field supply love.thread.Channel.supply,

--- https://love2d.org/wiki/Thread
---@class love.thread.Thread: love.Object
---@field demand love.thread.Thread.demand,
---@field get love.thread.Thread.get,
---@field getError love.thread.Thread.getError,
---@field getKeys love.thread.Thread.getKeys,
---@field getName love.thread.Thread.getName,
---@field isRunning love.thread.Thread.isRunning,
---@field kill love.thread.Thread.kill,
---@field peek love.thread.Thread.peek,
---@field receive love.thread.Thread.receive,
---@field send love.thread.Thread.send,
---@field set love.thread.Thread.set,
---@field start love.thread.Thread.start,
---@field wait love.thread.Thread.wait,

--- https://love2d.org/wiki/VideoStream
---@class love.video.VideoStream: love.Object
---@field getFilename love.video.VideoStream.getFilename,
---@field isPlaying love.video.VideoStream.isPlaying,
---@field pause love.video.VideoStream.pause,
---@field play love.video.VideoStream.play,
---@field rewind love.video.VideoStream.rewind,
---@field seek love.video.VideoStream.seek,
---@field setSync love.video.VideoStream.setSync,
---@field tell love.video.VideoStream.tell,

--- https://love2d.org/wiki/ChainShape
---@class love.ChainShape: love.physics.Shape, love.Object
---@field getChildEdge love.ChainShape.getChildEdge,
---@field getNextVertex love.ChainShape.getNextVertex,
---@field getPoint love.ChainShape.getPoint,
---@field getPoints love.ChainShape.getPoints,
---@field getPreviousVertex love.ChainShape.getPreviousVertex,
---@field getVertexCount love.ChainShape.getVertexCount,
---@field setNextVertex love.ChainShape.setNextVertex,
---@field setPrevVertex love.ChainShape.setPrevVertex,
---@field setPreviousVertex love.ChainShape.setPreviousVertex,

--- https://love2d.org/wiki/CircleShape
---@class love.CircleShape: love.physics.Shape, love.Object
---@field getLocalCenter love.CircleShape.getLocalCenter,
---@field getPoint love.CircleShape.getPoint,
---@field getRadius love.CircleShape.getRadius,
---@field getWorldCenter love.CircleShape.getWorldCenter,
---@field setPoint love.CircleShape.setPoint,
---@field setRadius love.CircleShape.setRadius,

--- https://love2d.org/wiki/DistanceJoint
---@class love.DistanceJoint: love.physics.Joint, love.Object
---@field getDamping love.DistanceJoint.getDamping,
---@field getDampingRatio love.DistanceJoint.getDampingRatio,
---@field getFrequency love.DistanceJoint.getFrequency,
---@field getLength love.DistanceJoint.getLength,
---@field setDamping love.DistanceJoint.setDamping,
---@field setDampingRatio love.DistanceJoint.setDampingRatio,
---@field setFrequency love.DistanceJoint.setFrequency,
---@field setLength love.DistanceJoint.setLength,

--- https://love2d.org/wiki/EdgeShape
---@class love.EdgeShape: love.physics.Shape, love.Object
---@field getNextVertex love.EdgeShape.getNextVertex,
---@field getPoints love.EdgeShape.getPoints,
---@field getPreviousVertex love.EdgeShape.getPreviousVertex,
---@field setNextVertex love.EdgeShape.setNextVertex,
---@field setPreviousVertex love.EdgeShape.setPreviousVertex,

--- https://love2d.org/wiki/FrictionJoint
---@class love.FrictionJoint: love.physics.Joint, love.Object
---@field getMaxForce love.FrictionJoint.getMaxForce,
---@field getMaxTorque love.FrictionJoint.getMaxTorque,
---@field setMaxForce love.FrictionJoint.setMaxForce,
---@field setMaxTorque love.FrictionJoint.setMaxTorque,

--- https://love2d.org/wiki/GearJoint
---@class love.GearJoint: love.physics.Joint, love.Object
---@field getJoints love.GearJoint.getJoints,
---@field getRatio love.GearJoint.getRatio,
---@field setRatio love.GearJoint.setRatio,

--- https://love2d.org/wiki/MotorJoint
---@class love.MotorJoint: love.physics.Joint, love.Object
---@field getAngularOffset love.MotorJoint.getAngularOffset,
---@field getLinearOffset love.MotorJoint.getLinearOffset,
---@field setAngularOffset love.MotorJoint.setAngularOffset,
---@field setLinearOffset love.MotorJoint.setLinearOffset,

--- https://love2d.org/wiki/MouseJoint
---@class love.MouseJoint: love.physics.Joint, love.Object
---@field getDampingRatio love.MouseJoint.getDampingRatio,
---@field getFrequency love.MouseJoint.getFrequency,
---@field getMaxForce love.MouseJoint.getMaxForce,
---@field getTarget love.MouseJoint.getTarget,
---@field setDampingRatio love.MouseJoint.setDampingRatio,
---@field setFrequency love.MouseJoint.setFrequency,
---@field setMaxForce love.MouseJoint.setMaxForce,
---@field setTarget love.MouseJoint.setTarget,

--- https://love2d.org/wiki/PolygonShape
---@class love.PolygonShape: love.physics.Shape, love.Object
---@field getPoints love.PolygonShape.getPoints,
---@field validate love.PolygonShape.validate,

--- https://love2d.org/wiki/PrismaticJoint
---@class love.PrismaticJoint: love.physics.Joint, love.Object
---@field areLimitsEnabled love.PrismaticJoint.areLimitsEnabled,
---@field enableLimit love.PrismaticJoint.enableLimit,
---@field enableMotor love.PrismaticJoint.enableMotor,
---@field getAxis love.PrismaticJoint.getAxis,
---@field getJointSpeed love.PrismaticJoint.getJointSpeed,
---@field getJointTranslation love.PrismaticJoint.getJointTranslation,
---@field getLimits love.PrismaticJoint.getLimits,
---@field getLowerLimit love.PrismaticJoint.getLowerLimit,
---@field getMaxMotorForce love.PrismaticJoint.getMaxMotorForce,
---@field getMotorForce love.PrismaticJoint.getMotorForce,
---@field getMotorSpeed love.PrismaticJoint.getMotorSpeed,
---@field getReferenceAngle love.PrismaticJoint.getReferenceAngle,
---@field getUpperLimit love.PrismaticJoint.getUpperLimit,
---@field hasLimitsEnabled love.PrismaticJoint.hasLimitsEnabled,
---@field isLimitEnabled love.PrismaticJoint.isLimitEnabled,
---@field isLimitsEnabled love.PrismaticJoint.isLimitsEnabled,
---@field isMotorEnabled love.PrismaticJoint.isMotorEnabled,
---@field setLimits love.PrismaticJoint.setLimits,
---@field setLimitsEnabled love.PrismaticJoint.setLimitsEnabled,
---@field setLowerLimit love.PrismaticJoint.setLowerLimit,
---@field setMaxMotorForce love.PrismaticJoint.setMaxMotorForce,
---@field setMotorEnabled love.PrismaticJoint.setMotorEnabled,
---@field setMotorSpeed love.PrismaticJoint.setMotorSpeed,
---@field setUpperLimit love.PrismaticJoint.setUpperLimit,

--- https://love2d.org/wiki/PulleyJoint
---@class love.PulleyJoint: love.physics.Joint, love.Object
---@field getConstant love.PulleyJoint.getConstant,
---@field getGroundAnchors love.PulleyJoint.getGroundAnchors,
---@field getLength1 love.PulleyJoint.getLength1,
---@field getLength2 love.PulleyJoint.getLength2,
---@field getLengthA love.PulleyJoint.getLengthA,
---@field getLengthB love.PulleyJoint.getLengthB,
---@field getMaxLengths love.PulleyJoint.getMaxLengths,
---@field getRatio love.PulleyJoint.getRatio,
---@field setConstant love.PulleyJoint.setConstant,
---@field setMaxLengths love.PulleyJoint.setMaxLengths,
---@field setRatio love.PulleyJoint.setRatio,

--- https://love2d.org/wiki/RevoluteJoint
---@class love.RevoluteJoint: love.physics.Joint, love.Object
---@field areLimitsEnabled love.RevoluteJoint.areLimitsEnabled,
---@field enableLimit love.RevoluteJoint.enableLimit,
---@field enableMotor love.RevoluteJoint.enableMotor,
---@field getJointAngle love.RevoluteJoint.getJointAngle,
---@field getJointSpeed love.RevoluteJoint.getJointSpeed,
---@field getLimits love.RevoluteJoint.getLimits,
---@field getLowerLimit love.RevoluteJoint.getLowerLimit,
---@field getMaxMotorTorque love.RevoluteJoint.getMaxMotorTorque,
---@field getMotorSpeed love.RevoluteJoint.getMotorSpeed,
---@field getMotorTorque love.RevoluteJoint.getMotorTorque,
---@field getReferenceAngle love.RevoluteJoint.getReferenceAngle,
---@field getUpperLimit love.RevoluteJoint.getUpperLimit,
---@field hasLimitsEnabled love.RevoluteJoint.hasLimitsEnabled,
---@field isLimitsEnabled love.RevoluteJoint.isLimitsEnabled,
---@field isMotorEnabled love.RevoluteJoint.isMotorEnabled,
---@field setLimits love.RevoluteJoint.setLimits,
---@field setLimitsEnabled love.RevoluteJoint.setLimitsEnabled,
---@field setLowerLimit love.RevoluteJoint.setLowerLimit,
---@field setMaxMotorTorque love.RevoluteJoint.setMaxMotorTorque,
---@field setMotorEnabled love.RevoluteJoint.setMotorEnabled,
---@field setMotorSpeed love.RevoluteJoint.setMotorSpeed,

--- https://love2d.org/wiki/RopeJoint
---@class love.RopeJoint: love.physics.Joint, love.Object
---@field getMaxLength love.RopeJoint.getMaxLength,
---@field setMaxLength love.RopeJoint.setMaxLength,

--- https://love2d.org/wiki/WeldJoint
---@class love.WeldJoint: love.physics.Joint, love.Object
---@field getDampingRatio love.WeldJoint.getDampingRatio,
---@field getFrequency love.WeldJoint.getFrequency,
---@field getReferenceAngle love.WeldJoint.getReferenceAngle,
---@field setDampingRatio love.WeldJoint.setDampingRatio,
---@field setFrequency love.WeldJoint.setFrequency,

--- https://love2d.org/wiki/WheelJoint
---@class love.WheelJoint: love.physics.Joint, love.Object
---@field enableMotor love.WheelJoint.enableMotor,
---@field getAxis love.WheelJoint.getAxis,
---@field getJointSpeed love.WheelJoint.getJointSpeed,
---@field getJointTranslation love.WheelJoint.getJointTranslation,
---@field getMaxMotorTorque love.WheelJoint.getMaxMotorTorque,
---@field getMotorSpeed love.WheelJoint.getMotorSpeed,
---@field getMotorTorque love.WheelJoint.getMotorTorque,
---@field getSpringDampingRatio love.WheelJoint.getSpringDampingRatio,
---@field getSpringFrequency love.WheelJoint.getSpringFrequency,
---@field isMotorEnabled love.WheelJoint.isMotorEnabled,
---@field setMaxMotorTorque love.WheelJoint.setMaxMotorTorque,
---@field setMotorEnabled love.WheelJoint.setMotorEnabled,
---@field setMotorSpeed love.WheelJoint.setMotorSpeed,
---@field setSpringDampingRatio love.WheelJoint.setSpringDampingRatio,
---@field setSpringFrequency love.WheelJoint.setSpringFrequency,

---------------
-- FUNCTIONS --
---------------

--- https://love2d.org/wiki/love.getVersion
---@alias love.getVersion
---| fun(): number, number, number, string

--- https://love2d.org/wiki/love.hasDeprecationOutput
---@alias love.hasDeprecationOutput
---| fun(): boolean

--- https://love2d.org/wiki/love.isVersionCompatible
---@alias love.isVersionCompatible
---| fun(version: string|nil): boolean
---| fun(major: number|nil, minor: number|nil, revision: number|nil): boolean

--- https://love2d.org/wiki/love.setDeprecationOutput
---@alias love.setDeprecationOutput
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/love.audio.getActiveEffects
---@alias love.audio.getActiveEffects
---| fun(): table

--- https://love2d.org/wiki/love.audio.getActiveSourceCount
---@alias love.audio.getActiveSourceCount
---| fun(): number

--- https://love2d.org/wiki/love.audio.getDistanceModel
---@alias love.audio.getDistanceModel
---| fun(): love.audio.DistanceModel

--- https://love2d.org/wiki/love.audio.getDopplerScale
---@alias love.audio.getDopplerScale
---| fun(): number

--- https://love2d.org/wiki/love.audio.getEffect
---@alias love.audio.getEffect
---| fun(name: string|nil): table

--- https://love2d.org/wiki/love.audio.getMaxSceneEffects
---@alias love.audio.getMaxSceneEffects
---| fun(): number

--- https://love2d.org/wiki/love.audio.getMaxSourceEffects
---@alias love.audio.getMaxSourceEffects
---| fun(): number

--- https://love2d.org/wiki/love.audio.getNumSources
---@alias love.audio.getNumSources
---| fun(): number

--- https://love2d.org/wiki/love.audio.getOrientation
---@alias love.audio.getOrientation
---| fun(): number, number

--- https://love2d.org/wiki/love.audio.getPosition
---@alias love.audio.getPosition
---| fun(): number, number, number

--- https://love2d.org/wiki/love.audio.getRecordingDevices
---@alias love.audio.getRecordingDevices
---| fun(): table

--- https://love2d.org/wiki/love.audio.getSourceCount
---@alias love.audio.getSourceCount
---| fun(): number

--- https://love2d.org/wiki/love.audio.getVelocity
---@alias love.audio.getVelocity
---| fun(): number, number, number

--- https://love2d.org/wiki/love.audio.getVolume
---@alias love.audio.getVolume
---| fun(): number

--- https://love2d.org/wiki/love.audio.isEffectsSupported
---@alias love.audio.isEffectsSupported
---| fun(): boolean

--- https://love2d.org/wiki/love.audio.newQueueableSource
---@alias love.audio.newQueueableSource
---| fun(samplerate: number|nil, bitdepth: number|nil, channels: number|nil, buffercount: number|nil): love.audio.Source

--- https://love2d.org/wiki/love.audio.newSource
---@alias love.audio.newSource
---| fun(filename: string|nil, type: love.audio.SourceType|nil): love.audio.Source
---| fun(file: love.filesystem.File|nil, type: love.audio.SourceType|nil): love.audio.Source
---| fun(decoder: love.sound.Decoder|nil, type: love.audio.SourceType|nil): love.audio.Source
---| fun(data: love.filesystem.FileData|nil, type: love.audio.SourceType|nil): love.audio.Source
---| fun(data: love.sound.SoundData|nil): love.audio.Source
---| fun(filename: string|nil, type: love.audio.SourceType|nil): love.audio.Source
---| fun(file: love.filesystem.File|nil, type: love.audio.SourceType|nil): love.audio.Source
---| fun(decoder: love.sound.Decoder|nil, type: love.audio.SourceType|nil): love.audio.Source
---| fun(data: love.filesystem.FileData|nil, type: love.audio.SourceType|nil): love.audio.Source

--- https://love2d.org/wiki/love.audio.pause
---@alias love.audio.pause
---| fun(): table
---| fun(source: love.audio.Source|nil, ...: love.audio.Source|nil): nil
---| fun(sources: table|nil): nil
---| fun(): nil
---| fun(source: love.audio.Source|nil): nil

--- https://love2d.org/wiki/love.audio.play
---@alias love.audio.play
---| fun(source: love.audio.Source|nil, ...: love.audio.Source|nil): boolean
---| fun(sources: table|nil): boolean
---| fun(source: love.audio.Source|nil): nil
---| fun(source: love.audio.Source|nil): boolean

--- https://love2d.org/wiki/love.audio.resume
---@alias love.audio.resume
---| fun(): nil
---| fun(source: love.audio.Source|nil): nil

--- https://love2d.org/wiki/love.audio.rewind
---@alias love.audio.rewind
---| fun(): nil
---| fun(source: love.audio.Source|nil): nil

--- https://love2d.org/wiki/love.audio.setDistanceModel
---@alias love.audio.setDistanceModel
---| fun(model: love.audio.DistanceModel|nil): nil

--- https://love2d.org/wiki/love.audio.setDopplerScale
---@alias love.audio.setDopplerScale
---| fun(scale: number|nil): nil

--- https://love2d.org/wiki/love.audio.setEffect
---@alias love.audio.setEffect
---| fun(name: string|nil, settings: table|nil, type: love.audio.EffectType|nil, volume: number|nil, ...: number|nil): boolean
---| fun(name: string|nil, enabled: boolean|nil): boolean

--- https://love2d.org/wiki/love.audio.setMixWithSystem
---@alias love.audio.setMixWithSystem
---| fun(mix: boolean|nil): boolean

--- https://love2d.org/wiki/love.audio.setOrientation
---@alias love.audio.setOrientation
---| fun(fx: number|nil, fy: number|nil, fz: number|nil, ux: number|nil, uy: number|nil, uz: number|nil): nil

--- https://love2d.org/wiki/love.audio.setPosition
---@alias love.audio.setPosition
---| fun(x: number|nil, y: number|nil, z: number|nil): nil

--- https://love2d.org/wiki/love.audio.setVelocity
---@alias love.audio.setVelocity
---| fun(x: number|nil, y: number|nil, z: number|nil): nil

--- https://love2d.org/wiki/love.audio.setVolume
---@alias love.audio.setVolume
---| fun(volume: number|nil): nil

--- https://love2d.org/wiki/love.audio.stop
---@alias love.audio.stop
---| fun(): nil
---| fun(source: love.audio.Source|nil, ...: love.audio.Source|nil): nil
---| fun(sources: table|nil): nil
---| fun(source: love.audio.Source|nil): nil

--- https://love2d.org/wiki/love.data.compress
---@alias love.data.compress
---| fun(container: love.data.ContainerType|nil, format: love.data.CompressedDataFormat|nil, rawstring: string|nil, level: number|nil): love.Variant
---| fun(container: love.data.ContainerType|nil, format: love.data.CompressedDataFormat|nil, data: love.Data|nil, level: number|nil): love.Variant

--- https://love2d.org/wiki/love.data.decode
---@alias love.data.decode
---| fun(container: love.data.ContainerType|nil, format: love.data.EncodeFormat|nil, sourceString: string|nil): love.Variant
---| fun(container: love.data.ContainerType|nil, format: love.data.EncodeFormat|nil, sourceData: love.Data|nil): love.Variant

--- https://love2d.org/wiki/love.data.decompress
---@alias love.data.decompress
---| fun(container: love.data.ContainerType|nil, compressedData: love.data.CompressedData|nil): love.Variant
---| fun(container: love.data.ContainerType|nil, format: love.data.CompressedDataFormat|nil, compressedString: string|nil): love.Variant
---| fun(container: love.data.ContainerType|nil, format: love.data.CompressedDataFormat|nil, data: love.Data|nil): love.Variant

--- https://love2d.org/wiki/love.data.encode
---@alias love.data.encode
---| fun(container: love.data.ContainerType|nil, format: love.data.EncodeFormat|nil, sourceString: string|nil, linelength: number|nil): love.Variant
---| fun(container: love.data.ContainerType|nil, format: love.data.EncodeFormat|nil, sourceData: love.Data|nil, linelength: number|nil): love.Variant

--- https://love2d.org/wiki/love.data.getPackedSize
---@alias love.data.getPackedSize
---| fun(format: string|nil): number

--- https://love2d.org/wiki/love.data.hash
---@alias love.data.hash
---| fun(hashFunction: love.data.HashFunction|nil, string: string|nil): string
---| fun(hashFunction: love.data.HashFunction|nil, data: love.Data|nil): string

--- https://love2d.org/wiki/love.data.newByteData
---@alias love.data.newByteData
---| fun(datastring: string|nil): love.data.ByteData
---| fun(data: love.Data|nil, offset: number|nil, size: number|nil): love.data.ByteData
---| fun(size: number|nil): love.data.ByteData

--- https://love2d.org/wiki/love.data.newDataView
---@alias love.data.newDataView
---| fun(data: love.Data|nil, offset: number|nil, size: number|nil): love.Data

--- https://love2d.org/wiki/love.data.pack
---@alias love.data.pack
---| fun(container: love.data.ContainerType|nil, format: string|nil, v1: love.Variant|nil, ...: love.Variant|nil): love.Variant

--- https://love2d.org/wiki/love.data.unpack
---@alias love.data.unpack
---| fun(format: string|nil, datastring: string|nil, pos: number|nil): love.Variant, love.Variant, number
---| fun(format: string|nil, data: love.Data|nil, pos: number|nil): love.Variant, love.Variant, number

--- https://love2d.org/wiki/love.event.clear
---@alias love.event.clear
---| fun(): nil

--- https://love2d.org/wiki/love.event.poll
---@alias love.event.poll
---| fun(): function

--- https://love2d.org/wiki/love.event.pump
---@alias love.event.pump
---| fun(): nil

--- https://love2d.org/wiki/love.event.push
---@alias love.event.push
---| fun(n: love.event.Event|nil, a: love.Variant|nil, b: love.Variant|nil, c: love.Variant|nil): nil

--- https://love2d.org/wiki/love.event.quit
---@alias love.event.quit
---| fun(): nil
---| fun(restart: string|nil): nil

--- https://love2d.org/wiki/love.event.wait
---@alias love.event.wait
---| fun(): love.event.Event, love.Variant, love.Variant, love.Variant

--- https://love2d.org/wiki/love.filesystem.append
---@alias love.filesystem.append
---| fun(name: string|nil, data: string|nil, size: number|nil): boolean, string
---| fun(name: string|nil, data: love.Data|nil, size: number|nil): boolean, string

--- https://love2d.org/wiki/love.filesystem.areSymlinksEnabled
---@alias love.filesystem.areSymlinksEnabled
---| fun(): boolean

--- https://love2d.org/wiki/love.filesystem.createDirectory
---@alias love.filesystem.createDirectory
---| fun(name: string|nil): boolean

--- https://love2d.org/wiki/love.filesystem.enumerate
---@alias love.filesystem.enumerate
---| fun(dir: string|nil): table

--- https://love2d.org/wiki/love.filesystem.exists
---@alias love.filesystem.exists
---| fun(filename: string|nil): boolean

--- https://love2d.org/wiki/love.filesystem.getAppdataDirectory
---@alias love.filesystem.getAppdataDirectory
---| fun(): string

--- https://love2d.org/wiki/love.filesystem.getCRequirePath
---@alias love.filesystem.getCRequirePath
---| fun(): string

--- https://love2d.org/wiki/love.filesystem.getDirectoryItems
---@alias love.filesystem.getDirectoryItems
---| fun(dir: string|nil): table
---| fun(dir: string|nil, callback: function|nil): table

--- https://love2d.org/wiki/love.filesystem.getIdentity
---@alias love.filesystem.getIdentity
---| fun(): string

--- https://love2d.org/wiki/love.filesystem.getInfo
---@alias love.filesystem.getInfo
---| fun(path: string|nil, filtertype: love.filesystem.FileType|nil): table, love.filesystem.FileType, number, number
---| fun(path: string|nil, info: table|nil): table, love.filesystem.FileType, number, number
---| fun(path: string|nil, filtertype: love.filesystem.FileType|nil, info: table|nil): table, love.filesystem.FileType, number, number

--- https://love2d.org/wiki/love.filesystem.getLastModified
---@alias love.filesystem.getLastModified
---| fun(filename: string|nil): number, string

--- https://love2d.org/wiki/love.filesystem.getRealDirectory
---@alias love.filesystem.getRealDirectory
---| fun(filepath: string|nil): string

--- https://love2d.org/wiki/love.filesystem.getRequirePath
---@alias love.filesystem.getRequirePath
---| fun(): string

--- https://love2d.org/wiki/love.filesystem.getSaveDirectory
---@alias love.filesystem.getSaveDirectory
---| fun(): string

--- https://love2d.org/wiki/love.filesystem.getSize
---@alias love.filesystem.getSize
---| fun(filename: string|nil): number, string

--- https://love2d.org/wiki/love.filesystem.getSource
---@alias love.filesystem.getSource
---| fun(): string

--- https://love2d.org/wiki/love.filesystem.getSourceBaseDirectory
---@alias love.filesystem.getSourceBaseDirectory
---| fun(): string

--- https://love2d.org/wiki/love.filesystem.getUserDirectory
---@alias love.filesystem.getUserDirectory
---| fun(): string

--- https://love2d.org/wiki/love.filesystem.getWorkingDirectory
---@alias love.filesystem.getWorkingDirectory
---| fun(): string

--- https://love2d.org/wiki/love.filesystem.init
---@alias love.filesystem.init
---| fun(appname: string|nil): nil

--- https://love2d.org/wiki/love.filesystem.isDirectory
---@alias love.filesystem.isDirectory
---| fun(filename: string|nil): boolean

--- https://love2d.org/wiki/love.filesystem.isFile
---@alias love.filesystem.isFile
---| fun(filename: string|nil): boolean

--- https://love2d.org/wiki/love.filesystem.isFused
---@alias love.filesystem.isFused
---| fun(): boolean

--- https://love2d.org/wiki/love.filesystem.isSymlink
---@alias love.filesystem.isSymlink
---| fun(path: string|nil): boolean

--- https://love2d.org/wiki/love.filesystem.lines
---@alias love.filesystem.lines
---| fun(name: string|nil): function

--- https://love2d.org/wiki/love.filesystem.load
---@alias love.filesystem.load
---| fun(name: string|nil): function, string

--- https://love2d.org/wiki/love.filesystem.mkdir
---@alias love.filesystem.mkdir
---| fun(name: string|nil): boolean

--- https://love2d.org/wiki/love.filesystem.mount
---@alias love.filesystem.mount
---| fun(archive: string|nil, mountpoint: string|nil, appendToPath: boolean|nil): boolean
---| fun(filedata: love.filesystem.FileData|nil, mountpoint: string|nil, appendToPath: boolean|nil): boolean
---| fun(data: love.Data|nil, archivename: string|nil, mountpoint: string|nil, appendToPath: boolean|nil): boolean

--- https://love2d.org/wiki/love.filesystem.newFile
---@alias love.filesystem.newFile
---| fun(filename: string|nil): love.filesystem.File
---| fun(filename: string|nil, mode: love.filesystem.FileMode|nil): love.filesystem.File, string

--- https://love2d.org/wiki/love.filesystem.newFileData
---@alias love.filesystem.newFileData
---| fun(contents: string|nil, name: string|nil): love.filesystem.FileData
---| fun(originaldata: love.Data|nil, name: string|nil): love.filesystem.FileData
---| fun(filepath: string|nil): love.filesystem.FileData, string
---| fun(contents: string|nil, name: string|nil, decoder: love.filesystem.FileDecoder|nil): love.filesystem.FileData

--- https://love2d.org/wiki/love.filesystem.read
---@alias love.filesystem.read
---| fun(name: string|nil, size: number|nil): string, number
---| fun(container: love.data.ContainerType|nil, name: string|nil, size: number|nil): love.Variant, number

--- https://love2d.org/wiki/love.filesystem.remove
---@alias love.filesystem.remove
---| fun(name: string|nil): boolean

--- https://love2d.org/wiki/love.filesystem.setCRequirePath
---@alias love.filesystem.setCRequirePath
---| fun(paths: string|nil): nil

--- https://love2d.org/wiki/love.filesystem.setIdentity
---@alias love.filesystem.setIdentity
---| fun(name: string|nil): nil

--- https://love2d.org/wiki/love.filesystem.setRequirePath
---@alias love.filesystem.setRequirePath
---| fun(paths: string|nil): nil

--- https://love2d.org/wiki/love.filesystem.setSource
---@alias love.filesystem.setSource
---| fun(path: string|nil): nil

--- https://love2d.org/wiki/love.filesystem.setSymlinksEnabled
---@alias love.filesystem.setSymlinksEnabled
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/love.filesystem.unmount
---@alias love.filesystem.unmount
---| fun(archive: string|nil): boolean

--- https://love2d.org/wiki/love.filesystem.write
---@alias love.filesystem.write
---| fun(name: string|nil, data: string|nil, size: number|nil): boolean, string
---| fun(name: string|nil, data: love.Data|nil, size: number|nil): boolean, string

--- https://love2d.org/wiki/love.font.newBMFontRasterizer
---@alias love.font.newBMFontRasterizer
---| fun(imageData: love.image.ImageData|nil, glyphs: string|nil): love.font.Rasterizer
---| fun(fileName: string|nil, glyphs: string|nil): love.font.Rasterizer

--- https://love2d.org/wiki/love.font.newFontData
---@alias love.font.newFontData
---| fun(rasterizer: love.font.Rasterizer|nil): love.font.FontData

--- https://love2d.org/wiki/love.font.newGlyphData
---@alias love.font.newGlyphData
---| fun(rasterizer: love.font.Rasterizer|nil, glyph: number|nil): love.font.GlyphData

--- https://love2d.org/wiki/love.font.newImageRasterizer
---@alias love.font.newImageRasterizer
---| fun(imageData: love.image.ImageData|nil, glyphs: string|nil, extraSpacing: number|nil): love.font.Rasterizer

--- https://love2d.org/wiki/love.font.newRasterizer
---@alias love.font.newRasterizer
---| fun(filename: string|nil): love.font.Rasterizer
---| fun(data: love.filesystem.FileData|nil): love.font.Rasterizer
---| fun(size: number|nil): love.font.Rasterizer
---| fun(fileName: string|nil, size: number|nil): love.font.Rasterizer
---| fun(fileData: love.filesystem.FileData|nil, size: number|nil): love.font.Rasterizer
---| fun(imageData: love.image.ImageData|nil, glyphs: string|nil): love.font.Rasterizer
---| fun(fileName: string|nil, glyphs: string|nil): love.font.Rasterizer

--- https://love2d.org/wiki/love.font.newTrueTypeRasterizer
---@alias love.font.newTrueTypeRasterizer
---| fun(size: number|nil, hinting: love.font.HintingMode|nil): love.font.Rasterizer
---| fun(fileName: string|nil, size: number|nil, hinting: love.font.HintingMode|nil): love.font.Rasterizer
---| fun(fileData: love.filesystem.FileData|nil, size: number|nil, hinting: love.font.HintingMode|nil): love.font.Rasterizer

--- https://love2d.org/wiki/love.graphics.arc
---@alias love.graphics.arc
---| fun(drawmode: love.graphics.DrawMode|nil, x: number|nil, y: number|nil, radius: number|nil, angle1: number|nil, angle2: number|nil, segments: number|nil): nil
---| fun(drawmode: love.graphics.DrawMode|nil, arctype: love.graphics.ArcType|nil, x: number|nil, y: number|nil, radius: number|nil, angle1: number|nil, angle2: number|nil, segments: number|nil): nil

--- https://love2d.org/wiki/love.graphics.circle
---@alias love.graphics.circle
---| fun(mode: love.graphics.DrawMode|nil, x: number|nil, y: number|nil, radius: number|nil): nil
---| fun(mode: love.graphics.DrawMode|nil, x: number|nil, y: number|nil, radius: number|nil, segments: number|nil): nil

--- https://love2d.org/wiki/love.graphics.clear
---@alias love.graphics.clear
---| fun(): nil
---| fun(r: number|nil, g: number|nil, b: number|nil, a: number|nil): nil
---| fun(color: table|nil, ...: table|nil): nil
---| fun(clearcolor: boolean|nil, clearstencil: boolean|nil, cleardepth: boolean|nil): nil

--- https://love2d.org/wiki/love.graphics.discard
---@alias love.graphics.discard
---| fun(discardcolor: boolean|nil, discardstencil: boolean|nil): nil
---| fun(discardcolors: table|nil, discardstencil: boolean|nil): nil

--- https://love2d.org/wiki/love.graphics.draw
---@alias love.graphics.draw
---| fun(drawable: love.graphics.Drawable|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil): nil
---| fun(texture: love.graphics.Texture|nil, quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil
---| fun(drawable: love.graphics.Drawable|nil, transform: love.math.Transform|nil): nil
---| fun(texture: love.graphics.Texture|nil, quad: love.graphics.Quad|nil, transform: love.math.Transform|nil): nil

--- https://love2d.org/wiki/love.graphics.drawInstanced
---@alias love.graphics.drawInstanced
---| fun(mesh: love.graphics.Mesh|nil, instancecount: number|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil
---| fun(mesh: love.graphics.Mesh|nil, instancecount: number|nil, transform: love.math.Transform|nil): nil

--- https://love2d.org/wiki/love.graphics.drawLayer
---@alias love.graphics.drawLayer
---| fun(texture: love.graphics.Texture|nil, layerindex: number|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil
---| fun(texture: love.graphics.Texture|nil, layerindex: number|nil, quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil
---| fun(texture: love.graphics.Texture|nil, layerindex: number|nil, transform: love.math.Transform|nil): nil
---| fun(texture: love.graphics.Texture|nil, layerindex: number|nil, quad: love.graphics.Quad|nil, transform: love.math.Transform|nil): nil

--- https://love2d.org/wiki/love.graphics.drawq
---@alias love.graphics.drawq
---| fun(image: love.graphics.Image|nil, quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil): nil
---| fun(canvas: love.graphics.Canvas|nil, quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil): nil

--- https://love2d.org/wiki/love.graphics.ellipse
---@alias love.graphics.ellipse
---| fun(mode: love.graphics.DrawMode|nil, x: number|nil, y: number|nil, radiusx: number|nil, radiusy: number|nil, segments: number|nil): nil

--- https://love2d.org/wiki/love.graphics.flushBatch
---@alias love.graphics.flushBatch
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.line
---@alias love.graphics.line
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, ...: number|nil): nil
---| fun(points: table|nil): nil

--- https://love2d.org/wiki/love.graphics.point
---@alias love.graphics.point
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/love.graphics.points
---@alias love.graphics.points
---| fun(x: number|nil, y: number|nil, ...: number|nil): nil
---| fun(points: table|nil, x: number|nil, y: number|nil, ...: number|nil): nil
---| fun(points: table|nil, point: table|nil, ...: table|nil): nil

--- https://love2d.org/wiki/love.graphics.polygon
---@alias love.graphics.polygon
---| fun(mode: love.graphics.DrawMode|nil, ...: number|nil): nil
---| fun(mode: love.graphics.DrawMode|nil, vertices: table|nil): nil

--- https://love2d.org/wiki/love.graphics.present
---@alias love.graphics.present
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.print
---@alias love.graphics.print
---| fun(text: string|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil): nil
---| fun(text: string|nil, font: love.graphics.Font|nil, x: number|nil, y: number|nil, angle: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): nil
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): nil
---| fun(text: string|nil, transform: love.math.Transform|nil): nil
---| fun(text: string|nil, font: love.graphics.Font|nil, transform: love.math.Transform|nil): nil
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): nil
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): nil

--- https://love2d.org/wiki/love.graphics.printf
---@alias love.graphics.printf
---| fun(text: string|nil, x: number|nil, y: number|nil, limit: number|nil, align: love.graphics.AlignMode|nil): nil
---| fun(text: string|nil, font: love.graphics.Font|nil, x: number|nil, y: number|nil, limit: number|nil, align: love.graphics.AlignMode|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil
---| fun(text: string|nil, transform: love.math.Transform|nil, limit: number|nil, align: love.graphics.AlignMode|nil): nil
---| fun(text: string|nil, font: love.graphics.Font|nil, transform: love.math.Transform|nil, limit: number|nil, align: love.graphics.AlignMode|nil): nil
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): nil
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): nil
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): nil
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): nil

--- https://love2d.org/wiki/love.graphics.quad
---@alias love.graphics.quad
---| fun(mode: love.graphics.DrawMode|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, x3: number|nil, y3: number|nil, x4: number|nil, y4: number|nil): nil

--- https://love2d.org/wiki/love.graphics.rectangle
---@alias love.graphics.rectangle
---| fun(mode: love.graphics.DrawMode|nil, x: number|nil, y: number|nil, width: number|nil, height: number|nil): nil

--- https://love2d.org/wiki/love.graphics.stencil
---@alias love.graphics.stencil
---| fun(stencilfunction: function|nil, action: love.graphics.StencilAction|nil, value: number|nil, keepvalues: boolean|nil): nil

--- https://love2d.org/wiki/love.graphics.triangle
---@alias love.graphics.triangle
---| fun(mode: love.graphics.DrawMode|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, x3: number|nil, y3: number|nil): nil

--- https://love2d.org/wiki/love.graphics.captureScreenshot
---@alias love.graphics.captureScreenshot
---| fun(filename: string|nil): nil
---| fun(callback: function|nil): nil
---| fun(channel: love.thread.Channel|nil): nil

--- https://love2d.org/wiki/love.graphics.newArrayImage
---@alias love.graphics.newArrayImage
---| fun(slices: table|nil, settings: table|nil, mipmaps: boolean|nil, linear: boolean|nil, dpiscale: number|nil): love.graphics.Image

--- https://love2d.org/wiki/love.graphics.newCanvas
---@alias love.graphics.newCanvas
---| fun(): love.graphics.Canvas
---| fun(width: number|nil, height: number|nil): love.graphics.Canvas
---| fun(width: number|nil, height: number|nil, settings: table|nil, type: love.graphics.TextureType|nil, format: love.font.PixelFormat|nil, readable: boolean|nil, msaa: number|nil, dpiscale: number|nil, mipmaps: love.graphics.MipmapMode|nil): love.graphics.Canvas
---| fun(width: number|nil, height: number|nil, layers: number|nil, settings: table|nil, type: love.graphics.TextureType|nil, format: love.font.PixelFormat|nil, readable: boolean|nil, msaa: number|nil, dpiscale: number|nil, mipmaps: love.graphics.MipmapMode|nil): love.graphics.Canvas
---| fun(width: number|nil, height: number|nil, format: love.graphics.CanvasFormat|nil): love.graphics.Canvas
---| fun(width: number|nil, height: number|nil, format: love.graphics.CanvasFormat|nil, msaa: number|nil): love.graphics.Canvas

--- https://love2d.org/wiki/love.graphics.newCubeImage
---@alias love.graphics.newCubeImage
---| fun(filename: string|nil, settings: table|nil, mipmaps: boolean|nil, linear: boolean|nil): love.graphics.Image
---| fun(faces: table|nil, settings: table|nil, mipmaps: boolean|nil, linear: boolean|nil): love.graphics.Image

--- https://love2d.org/wiki/love.graphics.newFont
---@alias love.graphics.newFont
---| fun(filename: love.Variant|nil, filename: string|nil, filename: love.Data|nil): love.graphics.Font
---| fun(filename: string|nil, size: number|nil): love.graphics.Font
---| fun(filename: string|nil, imagefilename: string|nil): love.graphics.Font
---| fun(size: number|nil): love.graphics.Font

--- https://love2d.org/wiki/love.graphics.newFramebuffer
---@alias love.graphics.newFramebuffer
---| fun(): love.graphics.Framebuffer
---| fun(width: number|nil, height: number|nil): love.graphics.Framebuffer

--- https://love2d.org/wiki/love.graphics.newImage
---@alias love.graphics.newImage
---| fun(filename: string|nil): love.graphics.Image
---| fun(filename: string|nil, format: love.graphics.TextureFormat|nil): love.graphics.Image

--- https://love2d.org/wiki/love.graphics.newImageFont
---@alias love.graphics.newImageFont
---| fun(filename: string|nil, glyphs: string|nil): love.graphics.Font
---| fun(imageData: love.image.ImageData|nil, glyphs: string|nil): love.graphics.Font

--- https://love2d.org/wiki/love.graphics.newMesh
---@alias love.graphics.newMesh
---| fun(vertices: table|nil, _1: number|nil, _2: number|nil, _3: number|nil, _4: number|nil, _5: number|nil, _6: number|nil, _7: number|nil, _8: number|nil): love.graphics.Mesh
---| fun(vertexcount: number|nil, mode: love.graphics.MeshDrawMode|nil, usage: love.graphics.BufferDataUsage|nil): love.graphics.Mesh
---| fun(vertexformat: table|nil, attribute: table|nil, ...: table|nil): love.graphics.Mesh
---| fun(vertexformat: table|nil, attribute: table|nil, ...: table|nil): love.graphics.Mesh
---| fun(vertices: table|nil, _1: number|nil, _2: number|nil, _3: number|nil, _4: number|nil, _5: number|nil, _6: number|nil, _7: number|nil, _8: number|nil): love.graphics.Mesh
---| fun(vertexcount: number|nil, texture: love.graphics.Texture|nil, mode: love.graphics.MeshDrawMode|nil): love.graphics.Mesh

--- https://love2d.org/wiki/love.graphics.newParticleSystem
---@alias love.graphics.newParticleSystem
---| fun(image: love.graphics.Image|nil, buffer: number|nil): love.graphics.ParticleSystem
---| fun(texture: love.graphics.Texture|nil, buffer: number|nil): love.graphics.ParticleSystem

--- https://love2d.org/wiki/love.graphics.newPixelEffect
---@alias love.graphics.newPixelEffect
---| fun(code: string|nil): love.graphics.PixelEffect
---| fun(color: vec4|nil, texture: love.graphics.Image|nil, texture_coords: vec2|nil, screen_coords: vec2|nil): vec4

--- https://love2d.org/wiki/love.graphics.newQuad
---@alias love.graphics.newQuad
---| fun(x: number|nil, y: number|nil, width: number|nil, height: number|nil, sw: number|nil, sh: number|nil): love.graphics.Quad
---| fun(x: number|nil, y: number|nil, width: number|nil, height: number|nil, texture: love.graphics.Texture|nil): love.graphics.Quad

--- https://love2d.org/wiki/love.graphics.newScreenshot
---@alias love.graphics.newScreenshot
---| fun(): love.image.ImageData
---| fun(copyAlpha: boolean|nil): love.image.ImageData

--- https://love2d.org/wiki/love.graphics.newShader
---@alias love.graphics.newShader
---| fun(code: string|nil): love.graphics.Shader
---| fun(pixelcode: string|nil, vertexcode: string|nil): love.graphics.Shader
---| fun(color: vec4|nil, tex: love.graphics.Image|nil, texture_coords: vec2|nil, screen_coords: vec2|nil): vec4
---| fun(transform_projection: mat4|nil, vertex_position: vec4|nil): vec4

--- https://love2d.org/wiki/love.graphics.newSpriteBatch
---@alias love.graphics.newSpriteBatch
---| fun(image: love.graphics.Image|nil, maxsprites: number|nil): love.graphics.SpriteBatch
---| fun(image: love.graphics.Image|nil, maxsprites: number|nil, usage: love.graphics.BufferDataUsage|nil): love.graphics.SpriteBatch
---| fun(texture: love.graphics.Texture|nil, maxsprites: number|nil, usage: love.graphics.BufferDataUsage|nil): love.graphics.SpriteBatch

--- https://love2d.org/wiki/love.graphics.newStencil
---@alias love.graphics.newStencil
---| fun(stencilFunction: function|nil): function

--- https://love2d.org/wiki/love.graphics.newText
---@alias love.graphics.newText
---| fun(font: love.graphics.Font|nil, textstring: string|nil): love.graphics.Text
---| fun(font: love.graphics.Font|nil, coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): love.graphics.Text

--- https://love2d.org/wiki/love.graphics.newVideo
---@alias love.graphics.newVideo
---| fun(filename: string|nil): love.graphics.Video
---| fun(videostream: love.video.VideoStream|nil): love.graphics.Video
---| fun(filename: string|nil, settings: table|nil, audio: boolean|nil, dpiscale: number|nil): love.graphics.Video
---| fun(filename: string|nil, loadaudio: boolean|nil): love.graphics.Video
---| fun(videostream: love.video.VideoStream|nil, loadaudio: boolean|nil): love.graphics.Video

--- https://love2d.org/wiki/love.graphics.newVolumeImage
---@alias love.graphics.newVolumeImage
---| fun(layers: table|nil, settings: table|nil, mipmaps: boolean|nil, linear: boolean|nil): love.graphics.Image

--- https://love2d.org/wiki/love.graphics.setNewFont
---@alias love.graphics.setNewFont
---| fun(size: number|nil): love.graphics.Font
---| fun(filename: string|nil, size: number|nil): love.graphics.Font
---| fun(file: love.filesystem.File|nil, size: number|nil): love.graphics.Font
---| fun(data: love.Data|nil, size: number|nil): love.graphics.Font
---| fun(rasterizer: love.font.Rasterizer|nil): love.graphics.Font

--- https://love2d.org/wiki/love.graphics.validateShader
---@alias love.graphics.validateShader
---| fun(gles: boolean|nil, code: string|nil): boolean, string
---| fun(gles: boolean|nil, pixelcode: string|nil, vertexcode: string|nil): boolean, string

--- https://love2d.org/wiki/love.graphics.getBackgroundColor
---@alias love.graphics.getBackgroundColor
---| fun(): number, number, number, number

--- https://love2d.org/wiki/love.graphics.getBlendMode
---@alias love.graphics.getBlendMode
---| fun(): love.graphics.BlendMode, love.graphics.BlendAlphaMode
---| fun(): love.graphics.BlendMode

--- https://love2d.org/wiki/love.graphics.getCanvas
---@alias love.graphics.getCanvas
---| fun(): love.graphics.Canvas, love.graphics.Canvas

--- https://love2d.org/wiki/love.graphics.getColor
---@alias love.graphics.getColor
---| fun(): number, number, number, number

--- https://love2d.org/wiki/love.graphics.getColorMask
---@alias love.graphics.getColorMask
---| fun(): boolean, boolean, boolean, boolean

--- https://love2d.org/wiki/love.graphics.getColorMode
---@alias love.graphics.getColorMode
---| fun(): love.graphics.ColorMode

--- https://love2d.org/wiki/love.graphics.getDefaultFilter
---@alias love.graphics.getDefaultFilter
---| fun(): love.graphics.FilterMode, love.graphics.FilterMode, number

--- https://love2d.org/wiki/love.graphics.getDefaultImageFilter
---@alias love.graphics.getDefaultImageFilter
---| fun(): love.graphics.FilterMode, love.graphics.FilterMode

--- https://love2d.org/wiki/love.graphics.getDepthMode
---@alias love.graphics.getDepthMode
---| fun(): love.graphics.CompareMode, boolean

--- https://love2d.org/wiki/love.graphics.getFont
---@alias love.graphics.getFont
---| fun(): love.graphics.Font

--- https://love2d.org/wiki/love.graphics.getFrontFaceWinding
---@alias love.graphics.getFrontFaceWinding
---| fun(): love.graphics.VertexWinding

--- https://love2d.org/wiki/love.graphics.getLineJoin
---@alias love.graphics.getLineJoin
---| fun(): love.graphics.LineJoin

--- https://love2d.org/wiki/love.graphics.getLineStipple
---@alias love.graphics.getLineStipple
---| fun(): number, number

--- https://love2d.org/wiki/love.graphics.getLineStyle
---@alias love.graphics.getLineStyle
---| fun(): love.graphics.LineStyle

--- https://love2d.org/wiki/love.graphics.getLineWidth
---@alias love.graphics.getLineWidth
---| fun(): number

--- https://love2d.org/wiki/love.graphics.getMeshCullMode
---@alias love.graphics.getMeshCullMode
---| fun(): love.graphics.CullMode

--- https://love2d.org/wiki/love.graphics.getPixelEffect
---@alias love.graphics.getPixelEffect
---| fun(): love.graphics.PixelEffect

--- https://love2d.org/wiki/love.graphics.getPointSize
---@alias love.graphics.getPointSize
---| fun(): number

--- https://love2d.org/wiki/love.graphics.getPointStyle
---@alias love.graphics.getPointStyle
---| fun(): love.graphics.PointStyle

--- https://love2d.org/wiki/love.graphics.getScissor
---@alias love.graphics.getScissor
---| fun(): number, number, number, number

--- https://love2d.org/wiki/love.graphics.getShader
---@alias love.graphics.getShader
---| fun(): love.graphics.Shader

--- https://love2d.org/wiki/love.graphics.getStackDepth
---@alias love.graphics.getStackDepth
---| fun(): number

--- https://love2d.org/wiki/love.graphics.getStencilTest
---@alias love.graphics.getStencilTest
---| fun(): love.graphics.CompareMode, number

--- https://love2d.org/wiki/love.graphics.intersectScissor
---@alias love.graphics.intersectScissor
---| fun(x: number|nil, y: number|nil, width: number|nil, height: number|nil): nil

--- https://love2d.org/wiki/love.graphics.isActive
---@alias love.graphics.isActive
---| fun(): boolean

--- https://love2d.org/wiki/love.graphics.isGammaCorrect
---@alias love.graphics.isGammaCorrect
---| fun(): boolean

--- https://love2d.org/wiki/love.graphics.isSupported
---@alias love.graphics.isSupported
---| fun(supportN: love.graphics.GraphicsFeature|nil): boolean

--- https://love2d.org/wiki/love.graphics.isWireframe
---@alias love.graphics.isWireframe
---| fun(): boolean

--- https://love2d.org/wiki/love.graphics.reset
---@alias love.graphics.reset
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.setBackgroundColor
---@alias love.graphics.setBackgroundColor
---| fun(red: number|nil, green: number|nil, blue: number|nil): nil
---| fun(rgb: table|nil): nil
---| fun(rgba: table|nil): nil

--- https://love2d.org/wiki/love.graphics.setBlendMode
---@alias love.graphics.setBlendMode
---| fun(mode: love.graphics.BlendMode|nil): nil

--- https://love2d.org/wiki/love.graphics.setCanvas
---@alias love.graphics.setCanvas
---| fun(canvas: love.graphics.Canvas|nil): nil
---| fun(): nil
---| fun(canvas1: love.graphics.Canvas|nil, canvas2: love.graphics.Canvas|nil, ...: love.graphics.Canvas|nil): nil
---| fun(canvas: love.graphics.Canvas|nil, slice: number|nil, mipmap: number|nil): nil
---| fun(setup: table|nil, _1: love.graphics.Canvas|nil, _2: love.graphics.Canvas|nil, ...: love.graphics.Canvas|nil, stencil: boolean|nil, depth: boolean|nil, depthstencil: love.graphics.Canvas|nil): nil

--- https://love2d.org/wiki/love.graphics.setColor
---@alias love.graphics.setColor
---| fun(red: number|nil, green: number|nil, blue: number|nil, alpha: number|nil): nil
---| fun(rgba: table|nil): nil

--- https://love2d.org/wiki/love.graphics.setColorMask
---@alias love.graphics.setColorMask
---| fun(red: boolean|nil, green: boolean|nil, blue: boolean|nil, alpha: boolean|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.setColorMode
---@alias love.graphics.setColorMode
---| fun(mode: love.graphics.ColorMode|nil): nil

--- https://love2d.org/wiki/love.graphics.setDefaultFilter
---@alias love.graphics.setDefaultFilter
---| fun(min: love.graphics.FilterMode|nil, mag: love.graphics.FilterMode|nil, anisotropy: number|nil): nil

--- https://love2d.org/wiki/love.graphics.setDefaultImageFilter
---@alias love.graphics.setDefaultImageFilter
---| fun(min: love.graphics.FilterMode|nil, mag: love.graphics.FilterMode|nil): nil

--- https://love2d.org/wiki/love.graphics.setDepthMode
---@alias love.graphics.setDepthMode
---| fun(comparemode: love.graphics.CompareMode|nil, write: boolean|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.setFont
---@alias love.graphics.setFont
---| fun(font: love.graphics.Font|nil): nil
---| fun(filename: string|nil, size: number|nil): nil
---| fun(size: number|nil): nil

--- https://love2d.org/wiki/love.graphics.setFrontFaceWinding
---@alias love.graphics.setFrontFaceWinding
---| fun(winding: love.graphics.VertexWinding|nil): nil

--- https://love2d.org/wiki/love.graphics.setInvertedStencil
---@alias love.graphics.setInvertedStencil
---| fun(stencilFunction: function|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.setLine
---@alias love.graphics.setLine
---| fun(width: number|nil, style: love.graphics.LineStyle|nil): nil

--- https://love2d.org/wiki/love.graphics.setLineJoin
---@alias love.graphics.setLineJoin
---| fun(join: love.graphics.LineJoin|nil): nil

--- https://love2d.org/wiki/love.graphics.setLineStipple
---@alias love.graphics.setLineStipple
---| fun(pattern: number|nil, repeat: number|nil): nil

--- https://love2d.org/wiki/love.graphics.setLineStyle
---@alias love.graphics.setLineStyle
---| fun(style: love.graphics.LineStyle|nil): nil

--- https://love2d.org/wiki/love.graphics.setLineWidth
---@alias love.graphics.setLineWidth
---| fun(width: number|nil): nil

--- https://love2d.org/wiki/love.graphics.setMeshCullMode
---@alias love.graphics.setMeshCullMode
---| fun(mode: love.graphics.CullMode|nil): nil

--- https://love2d.org/wiki/love.graphics.setPixelEffect
---@alias love.graphics.setPixelEffect
---| fun(pixeleffect: love.graphics.PixelEffect|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.setPoint
---@alias love.graphics.setPoint
---| fun(size: number|nil, style: love.graphics.PointStyle|nil): nil

--- https://love2d.org/wiki/love.graphics.setPointSize
---@alias love.graphics.setPointSize
---| fun(size: number|nil): nil

--- https://love2d.org/wiki/love.graphics.setPointStyle
---@alias love.graphics.setPointStyle
---| fun(style: love.graphics.PointStyle|nil): nil

--- https://love2d.org/wiki/love.graphics.setRenderTarget
---@alias love.graphics.setRenderTarget
---| fun(framebuffer: love.graphics.Framebuffer|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.setScissor
---@alias love.graphics.setScissor
---| fun(x: number|nil, y: number|nil, width: number|nil, height: number|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.setShader
---@alias love.graphics.setShader
---| fun(shader: love.graphics.Shader|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.setStencil
---@alias love.graphics.setStencil
---| fun(stencilFunction: function|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.setStencilTest
---@alias love.graphics.setStencilTest
---| fun(comparemode: love.graphics.CompareMode|nil, comparevalue: number|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.setWireframe
---@alias love.graphics.setWireframe
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/love.graphics.applyTransform
---@alias love.graphics.applyTransform
---| fun(transform: love.math.Transform|nil): nil

--- https://love2d.org/wiki/love.graphics.inverseTransformPoint
---@alias love.graphics.inverseTransformPoint
---| fun(screenX: number|nil, screenY: number|nil): number, number

--- https://love2d.org/wiki/love.graphics.origin
---@alias love.graphics.origin
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.pop
---@alias love.graphics.pop
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.push
---@alias love.graphics.push
---| fun(): nil

--- https://love2d.org/wiki/love.graphics.replaceTransform
---@alias love.graphics.replaceTransform
---| fun(transform: love.math.Transform|nil): nil

--- https://love2d.org/wiki/love.graphics.rotate
---@alias love.graphics.rotate
---| fun(angle: number|nil): nil

--- https://love2d.org/wiki/love.graphics.scale
---@alias love.graphics.scale
---| fun(sx: number|nil, sy: number|nil): nil

--- https://love2d.org/wiki/love.graphics.shear
---@alias love.graphics.shear
---| fun(kx: number|nil, ky: number|nil): nil

--- https://love2d.org/wiki/love.graphics.transformPoint
---@alias love.graphics.transformPoint
---| fun(globalX: number|nil, globalY: number|nil): number, number

--- https://love2d.org/wiki/love.graphics.translate
---@alias love.graphics.translate
---| fun(dx: number|nil, dy: number|nil): nil

--- https://love2d.org/wiki/love.graphics.checkMode
---@alias love.graphics.checkMode
---| fun(width: number|nil, height: number|nil, fullscreen: boolean|nil): boolean

--- https://love2d.org/wiki/love.graphics.getCaption
---@alias love.graphics.getCaption
---| fun(): string

--- https://love2d.org/wiki/love.graphics.getDPIScale
---@alias love.graphics.getDPIScale
---| fun(): number

--- https://love2d.org/wiki/love.graphics.getDimensions
---@alias love.graphics.getDimensions
---| fun(): number, number

--- https://love2d.org/wiki/love.graphics.getHeight
---@alias love.graphics.getHeight
---| fun(): number

--- https://love2d.org/wiki/love.graphics.getMode
---@alias love.graphics.getMode
---| fun(): number, number, boolean, boolean, number

--- https://love2d.org/wiki/love.graphics.getModes
---@alias love.graphics.getModes
---| fun(): table

--- https://love2d.org/wiki/love.graphics.getPixelDimensions
---@alias love.graphics.getPixelDimensions
---| fun(): number, number

--- https://love2d.org/wiki/love.graphics.getPixelHeight
---@alias love.graphics.getPixelHeight
---| fun(): number

--- https://love2d.org/wiki/love.graphics.getPixelWidth
---@alias love.graphics.getPixelWidth
---| fun(): number

--- https://love2d.org/wiki/love.graphics.getWidth
---@alias love.graphics.getWidth
---| fun(): number

--- https://love2d.org/wiki/love.graphics.hasFocus
---@alias love.graphics.hasFocus
---| fun(): boolean

--- https://love2d.org/wiki/love.graphics.isCreated
---@alias love.graphics.isCreated
---| fun(): boolean

--- https://love2d.org/wiki/love.graphics.setCaption
---@alias love.graphics.setCaption
---| fun(caption: string|nil): nil

--- https://love2d.org/wiki/love.graphics.setIcon
---@alias love.graphics.setIcon
---| fun(image: love.graphics.Image|nil): nil

--- https://love2d.org/wiki/love.graphics.setMode
---@alias love.graphics.setMode
---| fun(width: number|nil, height: number|nil, fullscreen: boolean|nil, vsync: boolean|nil, fsaa: number|nil): boolean

--- https://love2d.org/wiki/love.graphics.toggleFullscreen
---@alias love.graphics.toggleFullscreen
---| fun(): boolean

--- https://love2d.org/wiki/love.graphics.getCanvasFormats
---@alias love.graphics.getCanvasFormats
---| fun(): table
---| fun(readable: boolean|nil): table

--- https://love2d.org/wiki/love.graphics.getCompressedImageFormats
---@alias love.graphics.getCompressedImageFormats
---| fun(): table

--- https://love2d.org/wiki/love.graphics.getImageFormats
---@alias love.graphics.getImageFormats
---| fun(): table

--- https://love2d.org/wiki/love.graphics.getMaxImageSize
---@alias love.graphics.getMaxImageSize
---| fun(): number

--- https://love2d.org/wiki/love.graphics.getMaxPointSize
---@alias love.graphics.getMaxPointSize
---| fun(): number

--- https://love2d.org/wiki/love.graphics.getRendererInfo
---@alias love.graphics.getRendererInfo
---| fun(): string, string, string, string

--- https://love2d.org/wiki/love.graphics.getStats
---@alias love.graphics.getStats
---| fun(): table, number, number, number, number, number, number

--- https://love2d.org/wiki/love.graphics.getSupported
---@alias love.graphics.getSupported
---| fun(): table

--- https://love2d.org/wiki/love.graphics.getSystemLimit
---@alias love.graphics.getSystemLimit
---| fun(limittype: love.graphics.GraphicsLimit|nil): number

--- https://love2d.org/wiki/love.graphics.getSystemLimits
---@alias love.graphics.getSystemLimits
---| fun(): table

--- https://love2d.org/wiki/love.graphics.getTextureTypes
---@alias love.graphics.getTextureTypes
---| fun(): table

--- https://love2d.org/wiki/love.image.isCompressed
---@alias love.image.isCompressed
---| fun(filename: string|nil): boolean
---| fun(fileData: love.filesystem.FileData|nil): boolean

--- https://love2d.org/wiki/love.image.newCompressedData
---@alias love.image.newCompressedData
---| fun(filename: string|nil): love.image.CompressedImageData
---| fun(fileData: love.filesystem.FileData|nil): love.image.CompressedImageData

--- https://love2d.org/wiki/love.image.newEncodedImageData
---@alias love.image.newEncodedImageData
---| fun(imageData: love.image.ImageData|nil, format: love.image.ImageEncodeFormat|nil): love.Data

--- https://love2d.org/wiki/love.image.newImageData
---@alias love.image.newImageData
---| fun(width: number|nil, height: number|nil): love.image.ImageData
---| fun(filename: string|nil): love.image.ImageData
---| fun(filedata: love.filesystem.FileData|nil): love.image.ImageData
---| fun(encodeddata: love.Data|nil): love.image.ImageData
---| fun(width: number|nil, height: number|nil, rawdata: string|nil): love.image.ImageData

--- https://love2d.org/wiki/love.joystick.close
---@alias love.joystick.close
---| fun(joystick: number|nil): nil

--- https://love2d.org/wiki/love.joystick.getAxes
---@alias love.joystick.getAxes
---| fun(joystick: number|nil): number, number, number

--- https://love2d.org/wiki/love.joystick.getAxis
---@alias love.joystick.getAxis
---| fun(joystick: number|nil, axis: number|nil): number

--- https://love2d.org/wiki/love.joystick.getBall
---@alias love.joystick.getBall
---| fun(joystick: number|nil, ball: number|nil): number, number

--- https://love2d.org/wiki/love.joystick.getGamepadMappingString
---@alias love.joystick.getGamepadMappingString
---| fun(guid: string|nil): string

--- https://love2d.org/wiki/love.joystick.getHat
---@alias love.joystick.getHat
---| fun(joystick: number|nil, hat: number|nil): love.joystick.JoystickHat

--- https://love2d.org/wiki/love.joystick.getJoystickCount
---@alias love.joystick.getJoystickCount
---| fun(): number

--- https://love2d.org/wiki/love.joystick.getJoysticks
---@alias love.joystick.getJoysticks
---| fun(): table

--- https://love2d.org/wiki/love.joystick.getName
---@alias love.joystick.getName
---| fun(joystick: number|nil): string

--- https://love2d.org/wiki/love.joystick.getNumAxes
---@alias love.joystick.getNumAxes
---| fun(joystick: number|nil): number

--- https://love2d.org/wiki/love.joystick.getNumBalls
---@alias love.joystick.getNumBalls
---| fun(joystick: number|nil): number

--- https://love2d.org/wiki/love.joystick.getNumButtons
---@alias love.joystick.getNumButtons
---| fun(joystick: number|nil): number

--- https://love2d.org/wiki/love.joystick.getNumHats
---@alias love.joystick.getNumHats
---| fun(joystick: number|nil): number

--- https://love2d.org/wiki/love.joystick.getNumJoysticks
---@alias love.joystick.getNumJoysticks
---| fun(): number

--- https://love2d.org/wiki/love.joystick.isDown
---@alias love.joystick.isDown
---| fun(joystick: number|nil, button: number|nil): boolean
---| fun(joystick: number|nil, buttonN: number|nil): boolean

--- https://love2d.org/wiki/love.joystick.isOpen
---@alias love.joystick.isOpen
---| fun(joystick: number|nil): boolean

--- https://love2d.org/wiki/love.joystick.loadGamepadMappings
---@alias love.joystick.loadGamepadMappings
---| fun(filename: string|nil): nil
---| fun(mappings: string|nil): nil

--- https://love2d.org/wiki/love.joystick.open
---@alias love.joystick.open
---| fun(joystick: number|nil): boolean

--- https://love2d.org/wiki/love.joystick.saveGamepadMappings
---@alias love.joystick.saveGamepadMappings
---| fun(filename: string|nil): string
---| fun(): string

--- https://love2d.org/wiki/love.joystick.setGamepadMapping
---@alias love.joystick.setGamepadMapping
---| fun(guid: string|nil, button: love.joystick.GamepadButton|nil, inputtype: love.joystick.JoystickInputType|nil, inputindex: number|nil, hatdir: love.joystick.JoystickHat|nil): boolean
---| fun(guid: string|nil, axis: love.joystick.GamepadAxis|nil, inputtype: love.joystick.JoystickInputType|nil, inputindex: number|nil, hatdir: love.joystick.JoystickHat|nil): boolean

--- https://love2d.org/wiki/love.keyboard.getKeyFromScancode
---@alias love.keyboard.getKeyFromScancode
---| fun(scancode: love.keyboard.Scancode|nil): love.keyboard.KeyConstant

--- https://love2d.org/wiki/love.keyboard.getKeyRepeat
---@alias love.keyboard.getKeyRepeat
---| fun(): number, number

--- https://love2d.org/wiki/love.keyboard.getScancodeFromKey
---@alias love.keyboard.getScancodeFromKey
---| fun(key: love.keyboard.KeyConstant|nil): love.keyboard.Scancode

--- https://love2d.org/wiki/love.keyboard.hasKeyRepeat
---@alias love.keyboard.hasKeyRepeat
---| fun(): boolean

--- https://love2d.org/wiki/love.keyboard.hasScreenKeyboard
---@alias love.keyboard.hasScreenKeyboard
---| fun(): boolean

--- https://love2d.org/wiki/love.keyboard.hasTextInput
---@alias love.keyboard.hasTextInput
---| fun(): boolean

--- https://love2d.org/wiki/love.keyboard.isDown
---@alias love.keyboard.isDown
---| fun(key: love.keyboard.KeyConstant|nil): boolean
---| fun(key: love.keyboard.KeyConstant|nil, ...: love.keyboard.KeyConstant|nil): boolean
---| fun(keys: table|nil, key: love.keyboard.KeyConstant|nil, ...: love.keyboard.KeyConstant|nil): boolean

--- https://love2d.org/wiki/love.keyboard.isScancodeDown
---@alias love.keyboard.isScancodeDown
---| fun(scancode: love.keyboard.Scancode|nil, ...: love.keyboard.Scancode|nil): boolean
---| fun(scancodes: table|nil, scancode: love.keyboard.Scancode|nil, ...: love.keyboard.Scancode|nil): boolean

--- https://love2d.org/wiki/love.keyboard.setKeyRepeat
---@alias love.keyboard.setKeyRepeat
---| fun(enable: boolean|nil): nil
---| fun(delay: number|nil, interval: number|nil): nil

--- https://love2d.org/wiki/love.keyboard.setTextInput
---@alias love.keyboard.setTextInput
---| fun(enable: boolean|nil): nil
---| fun(enable: boolean|nil, x: number|nil, y: number|nil, w: number|nil, h: number|nil): nil

--- https://love2d.org/wiki/love.math.colorFromBytes
---@alias love.math.colorFromBytes
---| fun(rb: number|nil, gb: number|nil, bb: number|nil, ab: number|nil): number, number, number, number

--- https://love2d.org/wiki/love.math.colorToBytes
---@alias love.math.colorToBytes
---| fun(r: number|nil, g: number|nil, b: number|nil, a: number|nil): number, number, number, number

--- https://love2d.org/wiki/love.math.compress
---@alias love.math.compress
---| fun(rawstring: string|nil, format: love.data.CompressedDataFormat|nil, level: number|nil): love.data.CompressedData
---| fun(data: love.Data|nil, format: love.data.CompressedDataFormat|nil, level: number|nil): love.data.CompressedData

--- https://love2d.org/wiki/love.math.decompress
---@alias love.math.decompress
---| fun(compressedData: love.data.CompressedData|nil): string
---| fun(compressedstring: string|nil, format: love.data.CompressedDataFormat|nil): string
---| fun(data: love.Data|nil, format: love.data.CompressedDataFormat|nil): string

--- https://love2d.org/wiki/love.math.gammaToLinear
---@alias love.math.gammaToLinear
---| fun(r: number|nil, g: number|nil, b: number|nil): number, number, number
---| fun(color: table|nil): number, number, number
---| fun(c: number|nil): number

--- https://love2d.org/wiki/love.math.getRandomSeed
---@alias love.math.getRandomSeed
---| fun(): number, number

--- https://love2d.org/wiki/love.math.getRandomState
---@alias love.math.getRandomState
---| fun(): string

--- https://love2d.org/wiki/love.math.isConvex
---@alias love.math.isConvex
---| fun(vertices: table|nil): boolean
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, x3: number|nil, y3: number|nil): boolean

--- https://love2d.org/wiki/love.math.linearToGamma
---@alias love.math.linearToGamma
---| fun(lr: number|nil, lg: number|nil, lb: number|nil): number, number, number
---| fun(color: table|nil): number, number, number
---| fun(lc: number|nil): number

--- https://love2d.org/wiki/love.math.newBezierCurve
---@alias love.math.newBezierCurve
---| fun(vertices: table|nil): love.math.BezierCurve
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, x3: number|nil, y3: number|nil): love.math.BezierCurve

--- https://love2d.org/wiki/love.math.newRandomGenerator
---@alias love.math.newRandomGenerator
---| fun(): love.math.RandomGenerator
---| fun(seed: number|nil): love.math.RandomGenerator
---| fun(low: number|nil, high: number|nil): love.math.RandomGenerator

--- https://love2d.org/wiki/love.math.newTransform
---@alias love.math.newTransform
---| fun(): love.math.Transform
---| fun(x: number|nil, y: number|nil, angle: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): love.math.Transform

--- https://love2d.org/wiki/love.math.noise
---@alias love.math.noise
---| fun(x: number|nil): number
---| fun(x: number|nil, y: number|nil): number
---| fun(x: number|nil, y: number|nil, z: number|nil): number
---| fun(x: number|nil, y: number|nil, z: number|nil, w: number|nil): number

--- https://love2d.org/wiki/love.math.random
---@alias love.math.random
---| fun(): number
---| fun(max: number|nil): number
---| fun(min: number|nil, max: number|nil): number

--- https://love2d.org/wiki/love.math.randomNormal
---@alias love.math.randomNormal
---| fun(stddev: number|nil, mean: number|nil): number

--- https://love2d.org/wiki/love.math.setRandomSeed
---@alias love.math.setRandomSeed
---| fun(seed: number|nil): nil
---| fun(low: number|nil, high: number|nil): nil

--- https://love2d.org/wiki/love.math.setRandomState
---@alias love.math.setRandomState
---| fun(state: string|nil): nil

--- https://love2d.org/wiki/love.math.triangulate
---@alias love.math.triangulate
---| fun(polygon: table|nil): table
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, x3: number|nil, y3: number|nil): table

--- https://love2d.org/wiki/love.mouse.getCursor
---@alias love.mouse.getCursor
---| fun(): love.mouse.Cursor

--- https://love2d.org/wiki/love.mouse.getPosition
---@alias love.mouse.getPosition
---| fun(): number, number

--- https://love2d.org/wiki/love.mouse.getRelativeMode
---@alias love.mouse.getRelativeMode
---| fun(): boolean

--- https://love2d.org/wiki/love.mouse.getSystemCursor
---@alias love.mouse.getSystemCursor
---| fun(ctype: love.mouse.CursorType|nil): love.mouse.Cursor

--- https://love2d.org/wiki/love.mouse.getX
---@alias love.mouse.getX
---| fun(): number

--- https://love2d.org/wiki/love.mouse.getY
---@alias love.mouse.getY
---| fun(): number

--- https://love2d.org/wiki/love.mouse.hasCursor
---@alias love.mouse.hasCursor
---| fun(): boolean

--- https://love2d.org/wiki/love.mouse.isCursorSupported
---@alias love.mouse.isCursorSupported
---| fun(): boolean

--- https://love2d.org/wiki/love.mouse.isDown
---@alias love.mouse.isDown
---| fun(button: number|nil, ...: number|nil): boolean
---| fun(buttons: table|nil, button: table|nil, ...: number|nil): boolean
---| fun(button: love.mouse.MouseConstant|nil): boolean
---| fun(buttonN: love.mouse.MouseConstant|nil): boolean

--- https://love2d.org/wiki/love.mouse.isGrabbed
---@alias love.mouse.isGrabbed
---| fun(): boolean

--- https://love2d.org/wiki/love.mouse.isVisible
---@alias love.mouse.isVisible
---| fun(): boolean

--- https://love2d.org/wiki/love.mouse.newCursor
---@alias love.mouse.newCursor
---| fun(imageData: love.image.ImageData|nil, hotx: number|nil, hoty: number|nil): love.mouse.Cursor
---| fun(filename: string|nil, hotx: number|nil, hoty: number|nil): love.mouse.Cursor
---| fun(fileData: love.filesystem.FileData|nil, hotx: number|nil, hoty: number|nil): love.mouse.Cursor

--- https://love2d.org/wiki/love.mouse.setCursor
---@alias love.mouse.setCursor
---| fun(cursor: love.mouse.Cursor|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/love.mouse.setGrab
---@alias love.mouse.setGrab
---| fun(grab: boolean|nil): nil

--- https://love2d.org/wiki/love.mouse.setGrabbed
---@alias love.mouse.setGrabbed
---| fun(grab: boolean|nil): nil

--- https://love2d.org/wiki/love.mouse.setPosition
---@alias love.mouse.setPosition
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/love.mouse.setRelativeMode
---@alias love.mouse.setRelativeMode
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/love.mouse.setVisible
---@alias love.mouse.setVisible
---| fun(visible: boolean|nil): nil

--- https://love2d.org/wiki/love.mouse.setX
---@alias love.mouse.setX
---| fun(x: number|nil): nil

--- https://love2d.org/wiki/love.mouse.setY
---@alias love.mouse.setY
---| fun(y: number|nil): nil

--- https://love2d.org/wiki/love.physics.getDistance
---@alias love.physics.getDistance
---| fun(fixture1: love.physics.Fixture|nil, fixture2: love.physics.Fixture|nil): number, number, number, number, number

--- https://love2d.org/wiki/love.physics.getMeter
---@alias love.physics.getMeter
---| fun(): number

--- https://love2d.org/wiki/love.physics.newBody
---@alias love.physics.newBody
---| fun(world: love.physics.World|nil, x: number|nil, y: number|nil, type: love.physics.BodyType|nil): love.physics.Body
---| fun(world: love.physics.World|nil, x: number|nil, y: number|nil, m: number|nil, i: number|nil): love.physics.Body

--- https://love2d.org/wiki/love.physics.newChainShape
---@alias love.physics.newChainShape
---| fun(loop: boolean|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, ...: number|nil): love.ChainShape
---| fun(loop: boolean|nil, points: table|nil): love.ChainShape

--- https://love2d.org/wiki/love.physics.newCircleShape
---@alias love.physics.newCircleShape
---| fun(radius: number|nil): love.CircleShape
---| fun(x: number|nil, y: number|nil, radius: number|nil): love.CircleShape
---| fun(body: love.physics.Body|nil, x: number|nil, y: number|nil, radius: number|nil): love.CircleShape

--- https://love2d.org/wiki/love.physics.newDistanceJoint
---@alias love.physics.newDistanceJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, collideConnected: boolean|nil): love.DistanceJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil): love.DistanceJoint

--- https://love2d.org/wiki/love.physics.newEdgeShape
---@alias love.physics.newEdgeShape
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil): love.EdgeShape

--- https://love2d.org/wiki/love.physics.newFixture
---@alias love.physics.newFixture
---| fun(body: love.physics.Body|nil, shape: love.physics.Shape|nil, density: number|nil): love.physics.Fixture

--- https://love2d.org/wiki/love.physics.newFrictionJoint
---@alias love.physics.newFrictionJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x: number|nil, y: number|nil, collideConnected: boolean|nil): love.FrictionJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, collideConnected: boolean|nil): love.FrictionJoint

--- https://love2d.org/wiki/love.physics.newGearJoint
---@alias love.physics.newGearJoint
---| fun(joint1: love.physics.Joint|nil, joint2: love.physics.Joint|nil, ratio: number|nil, collideConnected: boolean|nil): love.GearJoint
---| fun(joint1: love.physics.Joint|nil, joint2: love.physics.Joint|nil, ratio: number|nil): love.GearJoint

--- https://love2d.org/wiki/love.physics.newMotorJoint
---@alias love.physics.newMotorJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, correctionFactor: number|nil): love.MotorJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, correctionFactor: number|nil, collideConnected: boolean|nil): love.MotorJoint

--- https://love2d.org/wiki/love.physics.newMouseJoint
---@alias love.physics.newMouseJoint
---| fun(body: love.physics.Body|nil, x: number|nil, y: number|nil): love.MouseJoint

--- https://love2d.org/wiki/love.physics.newPolygonShape
---@alias love.physics.newPolygonShape
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, x3: number|nil, y3: number|nil, ...: number|nil): love.PolygonShape
---| fun(vertices: table|nil): love.PolygonShape
---| fun(body: love.physics.Body|nil, ...: number|nil): love.PolygonShape

--- https://love2d.org/wiki/love.physics.newPrismaticJoint
---@alias love.physics.newPrismaticJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x: number|nil, y: number|nil, ax: number|nil, ay: number|nil, collideConnected: boolean|nil): love.PrismaticJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, ax: number|nil, ay: number|nil, collideConnected: boolean|nil): love.PrismaticJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, ax: number|nil, ay: number|nil, collideConnected: boolean|nil, referenceAngle: number|nil): love.PrismaticJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x: number|nil, y: number|nil, ax: number|nil, ay: number|nil): love.PrismaticJoint

--- https://love2d.org/wiki/love.physics.newPulleyJoint
---@alias love.physics.newPulleyJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, gx1: number|nil, gy1: number|nil, gx2: number|nil, gy2: number|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, ratio: number|nil, collideConnected: boolean|nil): love.PulleyJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, gx1: number|nil, gy1: number|nil, gx2: number|nil, gy2: number|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, ratio: number|nil): love.PulleyJoint

--- https://love2d.org/wiki/love.physics.newRectangleShape
---@alias love.physics.newRectangleShape
---| fun(width: number|nil, height: number|nil): love.PolygonShape
---| fun(x: number|nil, y: number|nil, width: number|nil, height: number|nil, angle: number|nil): love.PolygonShape
---| fun(body: love.physics.Body|nil, x: number|nil, y: number|nil, width: number|nil, height: number|nil, angle: number|nil): love.PolygonShape

--- https://love2d.org/wiki/love.physics.newRevoluteJoint
---@alias love.physics.newRevoluteJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x: number|nil, y: number|nil, collideConnected: boolean|nil): love.RevoluteJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, collideConnected: boolean|nil, referenceAngle: number|nil): love.RevoluteJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x: number|nil, y: number|nil): love.RevoluteJoint

--- https://love2d.org/wiki/love.physics.newRopeJoint
---@alias love.physics.newRopeJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, maxLength: number|nil, collideConnected: boolean|nil): love.RopeJoint

--- https://love2d.org/wiki/love.physics.newWeldJoint
---@alias love.physics.newWeldJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x: number|nil, y: number|nil, collideConnected: boolean|nil): love.WeldJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, collideConnected: boolean|nil): love.WeldJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, collideConnected: boolean|nil, referenceAngle: number|nil): love.WeldJoint

--- https://love2d.org/wiki/love.physics.newWheelJoint
---@alias love.physics.newWheelJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x: number|nil, y: number|nil, ax: number|nil, ay: number|nil, collideConnected: boolean|nil): love.WheelJoint
---| fun(body1: love.physics.Body|nil, body2: love.physics.Body|nil, x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, ax: number|nil, ay: number|nil, collideConnected: boolean|nil): love.WheelJoint

--- https://love2d.org/wiki/love.physics.newWorld
---@alias love.physics.newWorld
---| fun(xg: number|nil, yg: number|nil, sleep: boolean|nil): love.physics.World
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil): love.physics.World
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, xg: number|nil, yg: number|nil, sleep: boolean|nil): love.physics.World

--- https://love2d.org/wiki/love.physics.setMeter
---@alias love.physics.setMeter
---| fun(scale: number|nil): nil

--- https://love2d.org/wiki/love.sound.newDecoder
---@alias love.sound.newDecoder
---| fun(file: love.filesystem.File|nil, buffer: number|nil): love.sound.Decoder
---| fun(filename: string|nil, buffer: number|nil): love.sound.Decoder
---| fun(filedata: love.filesystem.FileData|nil, buffer: number|nil): love.sound.Decoder
---| fun(file: love.filesystem.File|nil, buffer: number|nil, rate: number|nil): love.sound.Decoder
---| fun(filename: string|nil, buffer: number|nil, rate: number|nil): love.sound.Decoder

--- https://love2d.org/wiki/love.sound.newSoundData
---@alias love.sound.newSoundData
---| fun(filename: string|nil): love.sound.SoundData
---| fun(file: love.filesystem.File|nil): love.sound.SoundData
---| fun(decoder: love.sound.Decoder|nil): love.sound.SoundData
---| fun(samples: number|nil, rate: number|nil, bits: number|nil, channels: number|nil): love.sound.SoundData

--- https://love2d.org/wiki/love.system.getClipboardText
---@alias love.system.getClipboardText
---| fun(): string

--- https://love2d.org/wiki/love.system.getOS
---@alias love.system.getOS
---| fun(): string

--- https://love2d.org/wiki/love.system.getPowerInfo
---@alias love.system.getPowerInfo
---| fun(): love.system.PowerState, number, number

--- https://love2d.org/wiki/love.system.getProcessorCount
---@alias love.system.getProcessorCount
---| fun(): number

--- https://love2d.org/wiki/love.system.hasBackgroundMusic
---@alias love.system.hasBackgroundMusic
---| fun(): boolean

--- https://love2d.org/wiki/love.system.openURL
---@alias love.system.openURL
---| fun(url: string|nil): boolean

--- https://love2d.org/wiki/love.system.setClipboardText
---@alias love.system.setClipboardText
---| fun(text: string|nil): nil

--- https://love2d.org/wiki/love.system.vibrate
---@alias love.system.vibrate
---| fun(seconds: number|nil): nil

--- https://love2d.org/wiki/love.thread.getChannel
---@alias love.thread.getChannel
---| fun(name: string|nil): love.thread.Channel

--- https://love2d.org/wiki/love.thread.getThread
---@alias love.thread.getThread
---| fun(name: string|nil): love.thread.Thread
---| fun(): love.thread.Thread

--- https://love2d.org/wiki/love.thread.getThreads
---@alias love.thread.getThreads
---| fun(): table

--- https://love2d.org/wiki/love.thread.newChannel
---@alias love.thread.newChannel
---| fun(): love.thread.Channel

--- https://love2d.org/wiki/love.thread.newThread
---@alias love.thread.newThread
---| fun(filename: string|nil): love.thread.Thread
---| fun(fileData: love.filesystem.FileData|nil): love.thread.Thread
---| fun(codestring: string|nil): love.thread.Thread
---| fun(name: string|nil, filename: string|nil): love.thread.Thread
---| fun(name: string|nil, file: love.filesystem.File|nil): love.thread.Thread
---| fun(name: string|nil, data: love.Data|nil): love.thread.Thread

--- https://love2d.org/wiki/love.timer.getAverageDelta
---@alias love.timer.getAverageDelta
---| fun(): number

--- https://love2d.org/wiki/love.timer.getDelta
---@alias love.timer.getDelta
---| fun(): number

--- https://love2d.org/wiki/love.timer.getFPS
---@alias love.timer.getFPS
---| fun(): number

--- https://love2d.org/wiki/love.timer.getMicroTime
---@alias love.timer.getMicroTime
---| fun(): number

--- https://love2d.org/wiki/love.timer.getTime
---@alias love.timer.getTime
---| fun(): number

--- https://love2d.org/wiki/love.timer.sleep
---@alias love.timer.sleep
---| fun(s: number|nil): nil
---| fun(ms: number|nil): nil

--- https://love2d.org/wiki/love.timer.step
---@alias love.timer.step
---| fun(): nil

--- https://love2d.org/wiki/love.touch.getPosition
---@alias love.touch.getPosition
---| fun(id: light_userdata|nil): number, number

--- https://love2d.org/wiki/love.touch.getPressure
---@alias love.touch.getPressure
---| fun(id: light_userdata|nil): number

--- https://love2d.org/wiki/love.touch.getTouches
---@alias love.touch.getTouches
---| fun(): table

--- https://love2d.org/wiki/love.video.newVideoStream
---@alias love.video.newVideoStream
---| fun(filename: string|nil): love.video.VideoStream
---| fun(file: love.filesystem.File|nil): love.video.VideoStream

--- https://love2d.org/wiki/love.window.close
---@alias love.window.close
---| fun(): nil

--- https://love2d.org/wiki/love.window.fromPixels
---@alias love.window.fromPixels
---| fun(pixelvalue: number|nil): number
---| fun(px: number|nil, py: number|nil): number, number

--- https://love2d.org/wiki/love.window.getDPIScale
---@alias love.window.getDPIScale
---| fun(): number

--- https://love2d.org/wiki/love.window.getDesktopDimensions
---@alias love.window.getDesktopDimensions
---| fun(displayindex: number|nil): number, number

--- https://love2d.org/wiki/love.window.getDimensions
---@alias love.window.getDimensions
---| fun(): number, number

--- https://love2d.org/wiki/love.window.getDisplayCount
---@alias love.window.getDisplayCount
---| fun(): number

--- https://love2d.org/wiki/love.window.getDisplayName
---@alias love.window.getDisplayName
---| fun(displayindex: number|nil): string

--- https://love2d.org/wiki/love.window.getDisplayOrientation
---@alias love.window.getDisplayOrientation
---| fun(displayindex: number|nil): love.window.DisplayOrientation

--- https://love2d.org/wiki/love.window.getFullscreen
---@alias love.window.getFullscreen
---| fun(): boolean, love.window.FullscreenType

--- https://love2d.org/wiki/love.window.getFullscreenModes
---@alias love.window.getFullscreenModes
---| fun(displayindex: number|nil): table

--- https://love2d.org/wiki/love.window.getHeight
---@alias love.window.getHeight
---| fun(): number

--- https://love2d.org/wiki/love.window.getIcon
---@alias love.window.getIcon
---| fun(): love.image.ImageData

--- https://love2d.org/wiki/love.window.getMode
---@alias love.window.getMode
---| fun(): number, number, table, boolean, love.window.FullscreenType, number, number, boolean, boolean, boolean, number, number, number

--- https://love2d.org/wiki/love.window.getPixelScale
---@alias love.window.getPixelScale
---| fun(): number

--- https://love2d.org/wiki/love.window.getPosition
---@alias love.window.getPosition
---| fun(): number, number, number

--- https://love2d.org/wiki/love.window.getSafeArea
---@alias love.window.getSafeArea
---| fun(): number, number, number, number

--- https://love2d.org/wiki/love.window.getTitle
---@alias love.window.getTitle
---| fun(): string

--- https://love2d.org/wiki/love.window.getVSync
---@alias love.window.getVSync
---| fun(): number

--- https://love2d.org/wiki/love.window.getWidth
---@alias love.window.getWidth
---| fun(): number

--- https://love2d.org/wiki/love.window.hasFocus
---@alias love.window.hasFocus
---| fun(): boolean

--- https://love2d.org/wiki/love.window.hasMouseFocus
---@alias love.window.hasMouseFocus
---| fun(): boolean

--- https://love2d.org/wiki/love.window.isCreated
---@alias love.window.isCreated
---| fun(): boolean

--- https://love2d.org/wiki/love.window.isDisplaySleepEnabled
---@alias love.window.isDisplaySleepEnabled
---| fun(): boolean

--- https://love2d.org/wiki/love.window.isMaximized
---@alias love.window.isMaximized
---| fun(): boolean

--- https://love2d.org/wiki/love.window.isMinimized
---@alias love.window.isMinimized
---| fun(): boolean

--- https://love2d.org/wiki/love.window.isOpen
---@alias love.window.isOpen
---| fun(): boolean

--- https://love2d.org/wiki/love.window.isVisible
---@alias love.window.isVisible
---| fun(): boolean

--- https://love2d.org/wiki/love.window.maximize
---@alias love.window.maximize
---| fun(): nil

--- https://love2d.org/wiki/love.window.minimize
---@alias love.window.minimize
---| fun(): nil

--- https://love2d.org/wiki/love.window.requestAttention
---@alias love.window.requestAttention
---| fun(continuous: boolean|nil): nil

--- https://love2d.org/wiki/love.window.restore
---@alias love.window.restore
---| fun(): nil

--- https://love2d.org/wiki/love.window.setDisplaySleepEnabled
---@alias love.window.setDisplaySleepEnabled
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/love.window.setFullscreen
---@alias love.window.setFullscreen
---| fun(fullscreen: boolean|nil): boolean
---| fun(fullscreen: boolean|nil, fstype: love.window.FullscreenType|nil): boolean

--- https://love2d.org/wiki/love.window.setIcon
---@alias love.window.setIcon
---| fun(imagedata: love.image.ImageData|nil): boolean

--- https://love2d.org/wiki/love.window.setMode
---@alias love.window.setMode
---| fun(width: number|nil, height: number|nil, flags: table|nil, fullscreen: boolean|nil, fullscreentype: love.window.FullscreenType|nil, vsync: number|nil, msaa: number|nil, stencil: boolean|nil, depth: number|nil, resizable: boolean|nil, borderless: boolean|nil, centered: boolean|nil, display: number|nil, minwidth: number|nil, minheight: number|nil): boolean

--- https://love2d.org/wiki/love.window.setPosition
---@alias love.window.setPosition
---| fun(x: number|nil, y: number|nil, displayindex: number|nil): nil

--- https://love2d.org/wiki/love.window.setTitle
---@alias love.window.setTitle
---| fun(title: string|nil): nil

--- https://love2d.org/wiki/love.window.setVSync
---@alias love.window.setVSync
---| fun(vsync: number|nil): nil

--- https://love2d.org/wiki/love.window.showMessageBox
---@alias love.window.showMessageBox
---| fun(title: string|nil, message: string|nil, type: love.window.MessageBoxType|nil, attachtowindow: boolean|nil): boolean
---| fun(title: string|nil, message: string|nil, buttonlist: table|nil, type: love.window.MessageBoxType|nil, attachtowindow: boolean|nil): number

--- https://love2d.org/wiki/love.window.toPixels
---@alias love.window.toPixels
---| fun(value: number|nil): number
---| fun(x: number|nil, y: number|nil): number, number

--- https://love2d.org/wiki/love.window.updateMode
---@alias love.window.updateMode
---| fun(width: number|nil, height: number|nil, settings: table|nil, fullscreen: boolean|nil, fullscreentype: love.window.FullscreenType|nil, vsync: boolean|nil, msaa: number|nil, resizable: boolean|nil, borderless: boolean|nil, centered: boolean|nil, display: number|nil, minwidth: number|nil, minheight: number|nil, highdpi: boolean|nil, x: number|nil, y: number|nil): boolean

--- https://love2d.org/wiki/Data:clone
---@alias love.Data.clone
---| fun(): love.Data

--- https://love2d.org/wiki/Data:getFFIPointer
---@alias love.Data.getFFIPointer
---| fun(): cdata

--- https://love2d.org/wiki/Data:getPointer
---@alias love.Data.getPointer
---| fun(): light_userdata

--- https://love2d.org/wiki/Data:getSize
---@alias love.Data.getSize
---| fun(): number

--- https://love2d.org/wiki/Data:getString
---@alias love.Data.getString
---| fun(): string

--- https://love2d.org/wiki/Object:release
---@alias love.Object.release
---| fun(): boolean

--- https://love2d.org/wiki/Object:type
---@alias love.Object.type
---| fun(): string

--- https://love2d.org/wiki/Object:typeOf
---@alias love.Object.typeOf
---| fun(name: string|nil): boolean

--- https://love2d.org/wiki/RecordingDevice:getBitDepth
---@alias love.audio.RecordingDevice.getBitDepth
---| fun(): number

--- https://love2d.org/wiki/RecordingDevice:getChannelCount
---@alias love.audio.RecordingDevice.getChannelCount
---| fun(): number

--- https://love2d.org/wiki/RecordingDevice:getData
---@alias love.audio.RecordingDevice.getData
---| fun(): love.sound.SoundData

--- https://love2d.org/wiki/RecordingDevice:getName
---@alias love.audio.RecordingDevice.getName
---| fun(): string

--- https://love2d.org/wiki/RecordingDevice:getSampleCount
---@alias love.audio.RecordingDevice.getSampleCount
---| fun(): number

--- https://love2d.org/wiki/RecordingDevice:getSampleRate
---@alias love.audio.RecordingDevice.getSampleRate
---| fun(): number

--- https://love2d.org/wiki/RecordingDevice:isRecording
---@alias love.audio.RecordingDevice.isRecording
---| fun(): boolean

--- https://love2d.org/wiki/RecordingDevice:start
---@alias love.audio.RecordingDevice.start
---| fun(samplecount: number|nil, samplerate: number|nil, bitdepth: number|nil, channels: number|nil): boolean

--- https://love2d.org/wiki/RecordingDevice:stop
---@alias love.audio.RecordingDevice.stop
---| fun(): love.sound.SoundData

--- https://love2d.org/wiki/Source:clone
---@alias love.audio.Source.clone
---| fun(): love.audio.Source

--- https://love2d.org/wiki/Source:getActiveEffects
---@alias love.audio.Source.getActiveEffects
---| fun(): table

--- https://love2d.org/wiki/Source:getAirAbsorption
---@alias love.audio.Source.getAirAbsorption
---| fun(): number

--- https://love2d.org/wiki/Source:getAttenuationDistances
---@alias love.audio.Source.getAttenuationDistances
---| fun(): number, number

--- https://love2d.org/wiki/Source:getChannelCount
---@alias love.audio.Source.getChannelCount
---| fun(): number

--- https://love2d.org/wiki/Source:getChannels
---@alias love.audio.Source.getChannels
---| fun(): number

--- https://love2d.org/wiki/Source:getCone
---@alias love.audio.Source.getCone
---| fun(): number, number, number

--- https://love2d.org/wiki/Source:getDirection
---@alias love.audio.Source.getDirection
---| fun(): number, number, number

--- https://love2d.org/wiki/Source:getDistance
---@alias love.audio.Source.getDistance
---| fun(): number, number

--- https://love2d.org/wiki/Source:getDuration
---@alias love.audio.Source.getDuration
---| fun(unit: love.audio.TimeUnit|nil): number

--- https://love2d.org/wiki/Source:getEffect
---@alias love.audio.Source.getEffect
---| fun(name: string|nil, filtersettings: table|nil): table, number, number, number

--- https://love2d.org/wiki/Source:getFilter
---@alias love.audio.Source.getFilter
---| fun(): table, love.audio.FilterType, number, number, number

--- https://love2d.org/wiki/Source:getFreeBufferCount
---@alias love.audio.Source.getFreeBufferCount
---| fun(): number

--- https://love2d.org/wiki/Source:getPitch
---@alias love.audio.Source.getPitch
---| fun(): number

--- https://love2d.org/wiki/Source:getPosition
---@alias love.audio.Source.getPosition
---| fun(): number, number, number

--- https://love2d.org/wiki/Source:getRolloff
---@alias love.audio.Source.getRolloff
---| fun(): number

--- https://love2d.org/wiki/Source:getType
---@alias love.audio.Source.getType
---| fun(): love.audio.SourceType

--- https://love2d.org/wiki/Source:getVelocity
---@alias love.audio.Source.getVelocity
---| fun(): number, number, number

--- https://love2d.org/wiki/Source:getVolume
---@alias love.audio.Source.getVolume
---| fun(): number

--- https://love2d.org/wiki/Source:getVolumeLimits
---@alias love.audio.Source.getVolumeLimits
---| fun(): number, number

--- https://love2d.org/wiki/Source:isLooping
---@alias love.audio.Source.isLooping
---| fun(): boolean

--- https://love2d.org/wiki/Source:isPaused
---@alias love.audio.Source.isPaused
---| fun(): boolean

--- https://love2d.org/wiki/Source:isPlaying
---@alias love.audio.Source.isPlaying
---| fun(): boolean

--- https://love2d.org/wiki/Source:isRelative
---@alias love.audio.Source.isRelative
---| fun(): boolean

--- https://love2d.org/wiki/Source:isStatic
---@alias love.audio.Source.isStatic
---| fun(): boolean

--- https://love2d.org/wiki/Source:isStopped
---@alias love.audio.Source.isStopped
---| fun(): boolean

--- https://love2d.org/wiki/Source:pause
---@alias love.audio.Source.pause
---| fun(): nil

--- https://love2d.org/wiki/Source:play
---@alias love.audio.Source.play
---| fun(): boolean
---| fun(): nil

--- https://love2d.org/wiki/Source:queue
---@alias love.audio.Source.queue
---| fun(soundData: love.sound.SoundData|nil, length: number|nil): boolean
---| fun(soundData: love.sound.SoundData|nil, offset: number|nil, length: number|nil): boolean
---| fun(rawData: light_userdata|nil, offset: number|nil, length: number|nil, sampleRate: number|nil, bitDepth: number|nil, channels: number|nil): boolean

--- https://love2d.org/wiki/Source:resume
---@alias love.audio.Source.resume
---| fun(): nil

--- https://love2d.org/wiki/Source:rewind
---@alias love.audio.Source.rewind
---| fun(): nil

--- https://love2d.org/wiki/Source:seek
---@alias love.audio.Source.seek
---| fun(offset: number|nil, unit: love.audio.TimeUnit|nil): nil

--- https://love2d.org/wiki/Source:setAirAbsorption
---@alias love.audio.Source.setAirAbsorption
---| fun(amount: number|nil): nil

--- https://love2d.org/wiki/Source:setAttenuationDistances
---@alias love.audio.Source.setAttenuationDistances
---| fun(ref: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/Source:setCone
---@alias love.audio.Source.setCone
---| fun(innerAngle: number|nil, outerAngle: number|nil, outerVolume: number|nil): nil

--- https://love2d.org/wiki/Source:setDirection
---@alias love.audio.Source.setDirection
---| fun(x: number|nil, y: number|nil, z: number|nil): nil

--- https://love2d.org/wiki/Source:setDistance
---@alias love.audio.Source.setDistance
---| fun(ref: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/Source:setEffect
---@alias love.audio.Source.setEffect
---| fun(name: string|nil, enable: boolean|nil): boolean
---| fun(name: string|nil, filtersettings: table|nil, type: love.audio.FilterType|nil, volume: number|nil, highgain: number|nil, lowgain: number|nil): boolean

--- https://love2d.org/wiki/Source:setFilter
---@alias love.audio.Source.setFilter
---| fun(settings: table|nil, type: love.audio.FilterType|nil, volume: number|nil, highgain: number|nil, lowgain: number|nil): boolean
---| fun(): nil

--- https://love2d.org/wiki/Source:setLooping
---@alias love.audio.Source.setLooping
---| fun(loop: boolean|nil): nil

--- https://love2d.org/wiki/Source:setPitch
---@alias love.audio.Source.setPitch
---| fun(pitch: number|nil): nil

--- https://love2d.org/wiki/Source:setPosition
---@alias love.audio.Source.setPosition
---| fun(x: number|nil, y: number|nil, z: number|nil): nil

--- https://love2d.org/wiki/Source:setRelative
---@alias love.audio.Source.setRelative
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/Source:setRolloff
---@alias love.audio.Source.setRolloff
---| fun(rolloff: number|nil): nil

--- https://love2d.org/wiki/Source:setVelocity
---@alias love.audio.Source.setVelocity
---| fun(x: number|nil, y: number|nil, z: number|nil): nil

--- https://love2d.org/wiki/Source:setVolume
---@alias love.audio.Source.setVolume
---| fun(volume: number|nil): nil

--- https://love2d.org/wiki/Source:setVolumeLimits
---@alias love.audio.Source.setVolumeLimits
---| fun(min: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/Source:stop
---@alias love.audio.Source.stop
---| fun(): nil

--- https://love2d.org/wiki/Source:tell
---@alias love.audio.Source.tell
---| fun(unit: love.audio.TimeUnit|nil): number

--- https://love2d.org/wiki/ByteData:setString
---@alias love.data.ByteData.setString
---| fun(data: string|nil, offset: number|nil): nil

--- https://love2d.org/wiki/CompressedData:getFormat
---@alias love.data.CompressedData.getFormat
---| fun(): love.data.CompressedDataFormat

--- https://love2d.org/wiki/FileData:getExtension
---@alias love.filesystem.FileData.getExtension
---| fun(): string

--- https://love2d.org/wiki/FileData:getFilename
---@alias love.filesystem.FileData.getFilename
---| fun(): string

--- https://love2d.org/wiki/GlyphData:getAdvance
---@alias love.font.GlyphData.getAdvance
---| fun(): number

--- https://love2d.org/wiki/GlyphData:getBearing
---@alias love.font.GlyphData.getBearing
---| fun(): number, number

--- https://love2d.org/wiki/GlyphData:getBoundingBox
---@alias love.font.GlyphData.getBoundingBox
---| fun(): number, number, number, number

--- https://love2d.org/wiki/GlyphData:getDimensions
---@alias love.font.GlyphData.getDimensions
---| fun(): number, number

--- https://love2d.org/wiki/GlyphData:getFormat
---@alias love.font.GlyphData.getFormat
---| fun(): love.font.PixelFormat

--- https://love2d.org/wiki/GlyphData:getGlyph
---@alias love.font.GlyphData.getGlyph
---| fun(): number

--- https://love2d.org/wiki/GlyphData:getGlyphString
---@alias love.font.GlyphData.getGlyphString
---| fun(): string

--- https://love2d.org/wiki/GlyphData:getHeight
---@alias love.font.GlyphData.getHeight
---| fun(): number

--- https://love2d.org/wiki/GlyphData:getWidth
---@alias love.font.GlyphData.getWidth
---| fun(): number

--- https://love2d.org/wiki/Rasterizer:getAdvance
---@alias love.font.Rasterizer.getAdvance
---| fun(): number

--- https://love2d.org/wiki/Rasterizer:getAscent
---@alias love.font.Rasterizer.getAscent
---| fun(): number

--- https://love2d.org/wiki/Rasterizer:getDescent
---@alias love.font.Rasterizer.getDescent
---| fun(): number

--- https://love2d.org/wiki/Rasterizer:getGlyphCount
---@alias love.font.Rasterizer.getGlyphCount
---| fun(): number

--- https://love2d.org/wiki/Rasterizer:getGlyphData
---@alias love.font.Rasterizer.getGlyphData
---| fun(glyph: string|nil): love.font.GlyphData
---| fun(glyphNumber: number|nil): love.font.GlyphData

--- https://love2d.org/wiki/Rasterizer:getHeight
---@alias love.font.Rasterizer.getHeight
---| fun(): number

--- https://love2d.org/wiki/Rasterizer:getLineHeight
---@alias love.font.Rasterizer.getLineHeight
---| fun(): number

--- https://love2d.org/wiki/Rasterizer:hasGlyphs
---@alias love.font.Rasterizer.hasGlyphs
---| fun(or: string|nil, or: string|nil, or: string|nil): boolean

--- https://love2d.org/wiki/Canvas:clear
---@alias love.graphics.Canvas.clear
---| fun(): nil
---| fun(red: number|nil, green: number|nil, blue: number|nil, alpha: number|nil): nil
---| fun(rgba: table|nil): nil

--- https://love2d.org/wiki/Canvas:generateMipmaps
---@alias love.graphics.Canvas.generateMipmaps
---| fun(): nil

--- https://love2d.org/wiki/Canvas:getFSAA
---@alias love.graphics.Canvas.getFSAA
---| fun(): number

--- https://love2d.org/wiki/Canvas:getFormat
---@alias love.graphics.Canvas.getFormat
---| fun(): love.graphics.CanvasFormat

--- https://love2d.org/wiki/Canvas:getImageData
---@alias love.graphics.Canvas.getImageData
---| fun(): love.image.ImageData

--- https://love2d.org/wiki/Canvas:getMSAA
---@alias love.graphics.Canvas.getMSAA
---| fun(): number

--- https://love2d.org/wiki/Canvas:getMipmapMode
---@alias love.graphics.Canvas.getMipmapMode
---| fun(): love.graphics.MipmapMode

--- https://love2d.org/wiki/Canvas:getPixel
---@alias love.graphics.Canvas.getPixel
---| fun(x: number|nil, y: number|nil): number, number, number, number

--- https://love2d.org/wiki/Canvas:newImageData
---@alias love.graphics.Canvas.newImageData
---| fun(): love.image.ImageData
---| fun(slice: number|nil, mipmap: number|nil, x: number|nil, y: number|nil, width: number|nil, height: number|nil): love.image.ImageData
---| fun(x: number|nil, y: number|nil, width: number|nil, height: number|nil): love.image.ImageData

--- https://love2d.org/wiki/Canvas:renderTo
---@alias love.graphics.Canvas.renderTo
---| fun(func: function|nil): nil
---| fun(index: number|nil, func: function|nil): nil

--- https://love2d.org/wiki/Font:getAscent
---@alias love.graphics.Font.getAscent
---| fun(): number

--- https://love2d.org/wiki/Font:getBaseline
---@alias love.graphics.Font.getBaseline
---| fun(): number

--- https://love2d.org/wiki/Font:getDPIScale
---@alias love.graphics.Font.getDPIScale
---| fun(): number

--- https://love2d.org/wiki/Font:getDescent
---@alias love.graphics.Font.getDescent
---| fun(): number

--- https://love2d.org/wiki/Font:getFilter
---@alias love.graphics.Font.getFilter
---| fun(): love.graphics.FilterMode, love.graphics.FilterMode, number

--- https://love2d.org/wiki/Font:getHeight
---@alias love.graphics.Font.getHeight
---| fun(): number

--- https://love2d.org/wiki/Font:getKerning
---@alias love.graphics.Font.getKerning
---| fun(leftchar: string|nil, rightchar: string|nil): number
---| fun(leftglyph: number|nil, rightglyph: number|nil): number

--- https://love2d.org/wiki/Font:getLineHeight
---@alias love.graphics.Font.getLineHeight
---| fun(): number

--- https://love2d.org/wiki/Font:getWidth
---@alias love.graphics.Font.getWidth
---| fun(text: string|nil): number

--- https://love2d.org/wiki/Font:getWrap
---@alias love.graphics.Font.getWrap
---| fun(text: string|nil, wraplimit: number|nil): number, table
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): number, table
---| fun(text: string|nil, wraplimit: number|nil): number, number

--- https://love2d.org/wiki/Font:hasGlyphs
---@alias love.graphics.Font.hasGlyphs
---| fun(text: string|nil): boolean
---| fun(character1: string|nil, character2: string|nil): boolean
---| fun(codepoint1: number|nil, codepoint2: number|nil): boolean

--- https://love2d.org/wiki/Font:setFallbacks
---@alias love.graphics.Font.setFallbacks
---| fun(fallbackfont1: love.graphics.Font|nil, ...: love.graphics.Font|nil): nil

--- https://love2d.org/wiki/Font:setFilter
---@alias love.graphics.Font.setFilter
---| fun(min: love.graphics.FilterMode|nil, mag: love.graphics.FilterMode|nil, anisotropy: number|nil): nil

--- https://love2d.org/wiki/Font:setLineHeight
---@alias love.graphics.Font.setLineHeight
---| fun(height: number|nil): nil

--- https://love2d.org/wiki/Framebuffer:getImageData
---@alias love.graphics.Framebuffer.getImageData
---| fun(): love.image.ImageData

--- https://love2d.org/wiki/Framebuffer:getWrap
---@alias love.graphics.Framebuffer.getWrap
---| fun(): love.graphics.WrapMode, love.graphics.WrapMode

--- https://love2d.org/wiki/Framebuffer:renderTo
---@alias love.graphics.Framebuffer.renderTo
---| fun(func: function|nil): nil

--- https://love2d.org/wiki/Framebuffer:setWrap
---@alias love.graphics.Framebuffer.setWrap
---| fun(horiz: love.graphics.WrapMode|nil, vert: love.graphics.WrapMode|nil): nil

--- https://love2d.org/wiki/Mesh:attachAttribute
---@alias love.graphics.Mesh.attachAttribute
---| fun(name: string|nil, mesh: love.graphics.Mesh|nil): nil
---| fun(name: string|nil, mesh: love.graphics.Mesh|nil, step: love.graphics.VertexAttributeStep|nil, attachname: string|nil): nil

--- https://love2d.org/wiki/Mesh:detachAttribute
---@alias love.graphics.Mesh.detachAttribute
---| fun(name: string|nil): boolean

--- https://love2d.org/wiki/Mesh:flush
---@alias love.graphics.Mesh.flush
---| fun(): nil

--- https://love2d.org/wiki/Mesh:getDrawMode
---@alias love.graphics.Mesh.getDrawMode
---| fun(): love.graphics.MeshDrawMode

--- https://love2d.org/wiki/Mesh:getDrawRange
---@alias love.graphics.Mesh.getDrawRange
---| fun(): number, number

--- https://love2d.org/wiki/Mesh:getImage
---@alias love.graphics.Mesh.getImage
---| fun(): love.graphics.Image

--- https://love2d.org/wiki/Mesh:getTexture
---@alias love.graphics.Mesh.getTexture
---| fun(): love.graphics.Texture

--- https://love2d.org/wiki/Mesh:getVertex
---@alias love.graphics.Mesh.getVertex
---| fun(index: number|nil): number, number
---| fun(index: number|nil): number, number, number, number, number, number, number, number

--- https://love2d.org/wiki/Mesh:getVertexAttribute
---@alias love.graphics.Mesh.getVertexAttribute
---| fun(vertexindex: number|nil, attributeindex: number|nil): number, number, number

--- https://love2d.org/wiki/Mesh:getVertexCount
---@alias love.graphics.Mesh.getVertexCount
---| fun(): number

--- https://love2d.org/wiki/Mesh:getVertexFormat
---@alias love.graphics.Mesh.getVertexFormat
---| fun(): table, table, table

--- https://love2d.org/wiki/Mesh:getVertexMap
---@alias love.graphics.Mesh.getVertexMap
---| fun(): table

--- https://love2d.org/wiki/Mesh:getVertices
---@alias love.graphics.Mesh.getVertices
---| fun(): table, number, number, number, number, number, number, number, number

--- https://love2d.org/wiki/Mesh:hasVertexColors
---@alias love.graphics.Mesh.hasVertexColors
---| fun(): boolean

--- https://love2d.org/wiki/Mesh:isAttributeEnabled
---@alias love.graphics.Mesh.isAttributeEnabled
---| fun(name: string|nil): boolean

--- https://love2d.org/wiki/Mesh:setAttributeEnabled
---@alias love.graphics.Mesh.setAttributeEnabled
---| fun(name: string|nil, enable: boolean|nil): nil

--- https://love2d.org/wiki/Mesh:setDrawMode
---@alias love.graphics.Mesh.setDrawMode
---| fun(mode: love.graphics.MeshDrawMode|nil): nil

--- https://love2d.org/wiki/Mesh:setDrawRange
---@alias love.graphics.Mesh.setDrawRange
---| fun(start: number|nil, count: number|nil): nil
---| fun(): nil
---| fun(min: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/Mesh:setImage
---@alias love.graphics.Mesh.setImage
---| fun(image: love.graphics.Image|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/Mesh:setTexture
---@alias love.graphics.Mesh.setTexture
---| fun(texture: love.graphics.Texture|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/Mesh:setVertex
---@alias love.graphics.Mesh.setVertex
---| fun(index: number|nil, attributecomponent: number|nil, ...: number|nil): nil
---| fun(index: number|nil, vertex: table|nil, attributecomponent: number|nil, ...: number|nil): nil
---| fun(index: number|nil, x: number|nil, y: number|nil, u: number|nil, v: number|nil, r: number|nil, g: number|nil, b: number|nil, a: number|nil): nil
---| fun(index: number|nil, vertex: table|nil, _1: number|nil, _2: number|nil, _3: number|nil, _4: number|nil, _5: number|nil, _6: number|nil, _7: number|nil, _8: number|nil): nil

--- https://love2d.org/wiki/Mesh:setVertexAttribute
---@alias love.graphics.Mesh.setVertexAttribute
---| fun(vertexindex: number|nil, attributeindex: number|nil, value1: number|nil, value2: number|nil, ...: number|nil): nil

--- https://love2d.org/wiki/Mesh:setVertexColors
---@alias love.graphics.Mesh.setVertexColors
---| fun(on: boolean|nil): nil

--- https://love2d.org/wiki/Mesh:setVertexMap
---@alias love.graphics.Mesh.setVertexMap
---| fun(map: table|nil): nil
---| fun(vi1: number|nil, vi2: number|nil, vi3: number|nil): nil
---| fun(data: love.Data|nil, datatype: love.graphics.IndexDataType|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/Mesh:setVertices
---@alias love.graphics.Mesh.setVertices
---| fun(vertices: table|nil, attributecomponent: number|nil, ...: number|nil): nil
---| fun(data: love.Data|nil, startvertex: number|nil): nil
---| fun(vertices: table|nil, _1: number|nil, _2: number|nil, _3: number|nil, _4: number|nil, _5: number|nil, _6: number|nil, _7: number|nil, _8: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:clone
---@alias love.graphics.ParticleSystem.clone
---| fun(): love.graphics.ParticleSystem

--- https://love2d.org/wiki/ParticleSystem:count
---@alias love.graphics.ParticleSystem.count
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:emit
---@alias love.graphics.ParticleSystem.emit
---| fun(numparticles: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:getAreaSpread
---@alias love.graphics.ParticleSystem.getAreaSpread
---| fun(): love.graphics.AreaSpreadDistribution, number, number

--- https://love2d.org/wiki/ParticleSystem:getBufferSize
---@alias love.graphics.ParticleSystem.getBufferSize
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getColors
---@alias love.graphics.ParticleSystem.getColors
---| fun(): table, table, table

--- https://love2d.org/wiki/ParticleSystem:getCount
---@alias love.graphics.ParticleSystem.getCount
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getDirection
---@alias love.graphics.ParticleSystem.getDirection
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getEmissionArea
---@alias love.graphics.ParticleSystem.getEmissionArea
---| fun(): love.graphics.AreaSpreadDistribution, number, number, number, boolean

--- https://love2d.org/wiki/ParticleSystem:getEmissionRate
---@alias love.graphics.ParticleSystem.getEmissionRate
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getEmitterLifetime
---@alias love.graphics.ParticleSystem.getEmitterLifetime
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getImage
---@alias love.graphics.ParticleSystem.getImage
---| fun(): love.graphics.Image

--- https://love2d.org/wiki/ParticleSystem:getInsertMode
---@alias love.graphics.ParticleSystem.getInsertMode
---| fun(): love.graphics.ParticleInsertMode

--- https://love2d.org/wiki/ParticleSystem:getLinearAcceleration
---@alias love.graphics.ParticleSystem.getLinearAcceleration
---| fun(): number, number, number, number

--- https://love2d.org/wiki/ParticleSystem:getLinearDamping
---@alias love.graphics.ParticleSystem.getLinearDamping
---| fun(): number, number

--- https://love2d.org/wiki/ParticleSystem:getOffset
---@alias love.graphics.ParticleSystem.getOffset
---| fun(): number, number

--- https://love2d.org/wiki/ParticleSystem:getOffsetX
---@alias love.graphics.ParticleSystem.getOffsetX
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getOffsetY
---@alias love.graphics.ParticleSystem.getOffsetY
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getParticleLifetime
---@alias love.graphics.ParticleSystem.getParticleLifetime
---| fun(): number, number

--- https://love2d.org/wiki/ParticleSystem:getPosition
---@alias love.graphics.ParticleSystem.getPosition
---| fun(): number, number

--- https://love2d.org/wiki/ParticleSystem:getQuads
---@alias love.graphics.ParticleSystem.getQuads
---| fun(): table

--- https://love2d.org/wiki/ParticleSystem:getRadialAcceleration
---@alias love.graphics.ParticleSystem.getRadialAcceleration
---| fun(): number, number

--- https://love2d.org/wiki/ParticleSystem:getRotation
---@alias love.graphics.ParticleSystem.getRotation
---| fun(): number, number

--- https://love2d.org/wiki/ParticleSystem:getSizeVariation
---@alias love.graphics.ParticleSystem.getSizeVariation
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getSizes
---@alias love.graphics.ParticleSystem.getSizes
---| fun(): number, number, number

--- https://love2d.org/wiki/ParticleSystem:getSpeed
---@alias love.graphics.ParticleSystem.getSpeed
---| fun(): number, number

--- https://love2d.org/wiki/ParticleSystem:getSpin
---@alias love.graphics.ParticleSystem.getSpin
---| fun(): number, number, number

--- https://love2d.org/wiki/ParticleSystem:getSpinVariation
---@alias love.graphics.ParticleSystem.getSpinVariation
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getSpread
---@alias love.graphics.ParticleSystem.getSpread
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getTangentialAcceleration
---@alias love.graphics.ParticleSystem.getTangentialAcceleration
---| fun(): number, number

--- https://love2d.org/wiki/ParticleSystem:getTexture
---@alias love.graphics.ParticleSystem.getTexture
---| fun(): love.graphics.Texture

--- https://love2d.org/wiki/ParticleSystem:getX
---@alias love.graphics.ParticleSystem.getX
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:getY
---@alias love.graphics.ParticleSystem.getY
---| fun(): number

--- https://love2d.org/wiki/ParticleSystem:hasRelativeRotation
---@alias love.graphics.ParticleSystem.hasRelativeRotation
---| fun(): boolean

--- https://love2d.org/wiki/ParticleSystem:isActive
---@alias love.graphics.ParticleSystem.isActive
---| fun(): boolean

--- https://love2d.org/wiki/ParticleSystem:isEmpty
---@alias love.graphics.ParticleSystem.isEmpty
---| fun(): boolean

--- https://love2d.org/wiki/ParticleSystem:isFull
---@alias love.graphics.ParticleSystem.isFull
---| fun(): boolean

--- https://love2d.org/wiki/ParticleSystem:isPaused
---@alias love.graphics.ParticleSystem.isPaused
---| fun(): boolean

--- https://love2d.org/wiki/ParticleSystem:isStopped
---@alias love.graphics.ParticleSystem.isStopped
---| fun(): boolean

--- https://love2d.org/wiki/ParticleSystem:moveTo
---@alias love.graphics.ParticleSystem.moveTo
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:pause
---@alias love.graphics.ParticleSystem.pause
---| fun(): nil

--- https://love2d.org/wiki/ParticleSystem:reset
---@alias love.graphics.ParticleSystem.reset
---| fun(): nil

--- https://love2d.org/wiki/ParticleSystem:setAreaSpread
---@alias love.graphics.ParticleSystem.setAreaSpread
---| fun(distribution: love.graphics.AreaSpreadDistribution|nil, dx: number|nil, dy: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setBufferSize
---@alias love.graphics.ParticleSystem.setBufferSize
---| fun(size: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setColor
---@alias love.graphics.ParticleSystem.setColor
---| fun(r1: number|nil, g1: number|nil, b1: number|nil, a1: number|nil, r2: number|nil, g2: number|nil, b2: number|nil, a2: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setColors
---@alias love.graphics.ParticleSystem.setColors
---| fun(r1: number|nil, g1: number|nil, b1: number|nil, a1: number|nil, r2: number|nil, g2: number|nil, b2: number|nil, a2: number|nil, r8: number|nil, g8: number|nil, b8: number|nil, a8: number|nil): nil
---| fun(rgba1: table|nil, rgba2: table|nil, rgba8: table|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setDirection
---@alias love.graphics.ParticleSystem.setDirection
---| fun(direction: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setEmissionArea
---@alias love.graphics.ParticleSystem.setEmissionArea
---| fun(distribution: love.graphics.AreaSpreadDistribution|nil, dx: number|nil, dy: number|nil, angle: number|nil, directionRelativeToCenter: boolean|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setEmissionRate
---@alias love.graphics.ParticleSystem.setEmissionRate
---| fun(rate: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setEmitterLifetime
---@alias love.graphics.ParticleSystem.setEmitterLifetime
---| fun(life: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setGravity
---@alias love.graphics.ParticleSystem.setGravity
---| fun(min: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setImage
---@alias love.graphics.ParticleSystem.setImage
---| fun(image: love.graphics.Image|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setInsertMode
---@alias love.graphics.ParticleSystem.setInsertMode
---| fun(mode: love.graphics.ParticleInsertMode|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setLifetime
---@alias love.graphics.ParticleSystem.setLifetime
---| fun(life: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setLinearAcceleration
---@alias love.graphics.ParticleSystem.setLinearAcceleration
---| fun(xmin: number|nil, ymin: number|nil, xmax: number|nil, ymax: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setLinearDamping
---@alias love.graphics.ParticleSystem.setLinearDamping
---| fun(min: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setOffset
---@alias love.graphics.ParticleSystem.setOffset
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setParticleLife
---@alias love.graphics.ParticleSystem.setParticleLife
---| fun(min: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setParticleLifetime
---@alias love.graphics.ParticleSystem.setParticleLifetime
---| fun(min: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setPosition
---@alias love.graphics.ParticleSystem.setPosition
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setQuads
---@alias love.graphics.ParticleSystem.setQuads
---| fun(quad1: love.graphics.Quad|nil, quad2: love.graphics.Quad|nil): nil
---| fun(quads: table|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setRadialAcceleration
---@alias love.graphics.ParticleSystem.setRadialAcceleration
---| fun(min: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setRelativeRotation
---@alias love.graphics.ParticleSystem.setRelativeRotation
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setRotation
---@alias love.graphics.ParticleSystem.setRotation
---| fun(min: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setSize
---@alias love.graphics.ParticleSystem.setSize
---| fun(min: number|nil, max: number|nil, variation: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setSizeVariation
---@alias love.graphics.ParticleSystem.setSizeVariation
---| fun(variation: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setSizes
---@alias love.graphics.ParticleSystem.setSizes
---| fun(size1: number|nil, size2: number|nil, size8: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setSpeed
---@alias love.graphics.ParticleSystem.setSpeed
---| fun(min: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setSpin
---@alias love.graphics.ParticleSystem.setSpin
---| fun(min: number|nil, max: number|nil): nil
---| fun(min: number|nil, max: number|nil, variation: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setSpinVariation
---@alias love.graphics.ParticleSystem.setSpinVariation
---| fun(variation: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setSpread
---@alias love.graphics.ParticleSystem.setSpread
---| fun(spread: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setSprite
---@alias love.graphics.ParticleSystem.setSprite
---| fun(sprite: love.graphics.Image|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setTangentialAcceleration
---@alias love.graphics.ParticleSystem.setTangentialAcceleration
---| fun(min: number|nil, max: number|nil): nil

--- https://love2d.org/wiki/ParticleSystem:setTexture
---@alias love.graphics.ParticleSystem.setTexture
---| fun(texture: love.graphics.Texture|nil): nil

--- https://love2d.org/wiki/ParticleSystem:start
---@alias love.graphics.ParticleSystem.start
---| fun(): nil

--- https://love2d.org/wiki/ParticleSystem:stop
---@alias love.graphics.ParticleSystem.stop
---| fun(): nil

--- https://love2d.org/wiki/ParticleSystem:update
---@alias love.graphics.ParticleSystem.update
---| fun(dt: number|nil): nil

--- https://love2d.org/wiki/PixelEffect:getWarnings
---@alias love.graphics.PixelEffect.getWarnings
---| fun(): string

--- https://love2d.org/wiki/PixelEffect:send
---@alias love.graphics.PixelEffect.send
---| fun(name: string|nil, number: number|nil, ...: number|nil): nil
---| fun(name: string|nil, vector: table|nil, ...: table|nil): nil
---| fun(name: string|nil, matrix: table|nil, ...: table|nil): nil
---| fun(name: string|nil, image: love.graphics.Image|nil, ...: love.graphics.Image|nil): nil
---| fun(name: string|nil, canvas: love.graphics.Canvas|nil, ...: love.graphics.Image|nil): nil

--- https://love2d.org/wiki/Quad:flip
---@alias love.graphics.Quad.flip
---| fun(x: boolean|nil, y: boolean|nil): nil

--- https://love2d.org/wiki/Quad:getLayer
---@alias love.graphics.Quad.getLayer
---| fun(): number

--- https://love2d.org/wiki/Quad:getTextureDimensions
---@alias love.graphics.Quad.getTextureDimensions
---| fun(): number, number

--- https://love2d.org/wiki/Quad:getViewport
---@alias love.graphics.Quad.getViewport
---| fun(): number, number, number, number

--- https://love2d.org/wiki/Quad:setLayer
---@alias love.graphics.Quad.setLayer
---| fun(layerindex: number|nil): nil

--- https://love2d.org/wiki/Quad:setViewport
---@alias love.graphics.Quad.setViewport
---| fun(x: number|nil, y: number|nil, w: number|nil, h: number|nil): nil

--- https://love2d.org/wiki/Shader:getExternVariable
---@alias love.graphics.Shader.getExternVariable
---| fun(name: string|nil): type, number, number

--- https://love2d.org/wiki/Shader:getWarnings
---@alias love.graphics.Shader.getWarnings
---| fun(): string

--- https://love2d.org/wiki/Shader:hasUniform
---@alias love.graphics.Shader.hasUniform
---| fun(name: string|nil): boolean

--- https://love2d.org/wiki/Shader:send
---@alias love.graphics.Shader.send
---| fun(name: string|nil, number: number|nil, ...: number|nil): nil
---| fun(name: string|nil, vector: table|nil, ...: table|nil): nil
---| fun(name: string|nil, matrix: table|nil, ...: table|nil): nil
---| fun(name: string|nil, texture: love.graphics.Texture|nil): nil
---| fun(name: string|nil, boolean: boolean|nil, ...: boolean|nil): nil
---| fun(name: string|nil, matrixlayout: love.math.MatrixLayout|nil, matrix: table|nil, ...: table|nil): nil
---| fun(name: string|nil, data: love.Data|nil, offset: number|nil, size: number|nil): nil
---| fun(name: string|nil, data: love.Data|nil, matrixlayout: love.math.MatrixLayout|nil, offset: number|nil, size: number|nil): nil

--- https://love2d.org/wiki/Shader:sendColor
---@alias love.graphics.Shader.sendColor
---| fun(name: string|nil, color: table|nil, ...: table|nil): nil

--- https://love2d.org/wiki/SpriteBatch:add
---@alias love.graphics.SpriteBatch.add
---| fun(x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): number
---| fun(quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): number
---| fun(x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil): nil

--- https://love2d.org/wiki/SpriteBatch:addLayer
---@alias love.graphics.SpriteBatch.addLayer
---| fun(layerindex: number|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): number
---| fun(layerindex: number|nil, quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): number
---| fun(layerindex: number|nil, transform: love.math.Transform|nil): number
---| fun(layerindex: number|nil, quad: love.graphics.Quad|nil, transform: love.math.Transform|nil): number

--- https://love2d.org/wiki/SpriteBatch:addq
---@alias love.graphics.SpriteBatch.addq
---| fun(quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): number
---| fun(quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil): nil

--- https://love2d.org/wiki/SpriteBatch:attachAttribute
---@alias love.graphics.SpriteBatch.attachAttribute
---| fun(name: string|nil, mesh: love.graphics.Mesh|nil): nil

--- https://love2d.org/wiki/SpriteBatch:bind
---@alias love.graphics.SpriteBatch.bind
---| fun(): nil

--- https://love2d.org/wiki/SpriteBatch:clear
---@alias love.graphics.SpriteBatch.clear
---| fun(): nil

--- https://love2d.org/wiki/SpriteBatch:flush
---@alias love.graphics.SpriteBatch.flush
---| fun(): nil

--- https://love2d.org/wiki/SpriteBatch:getBufferSize
---@alias love.graphics.SpriteBatch.getBufferSize
---| fun(): number

--- https://love2d.org/wiki/SpriteBatch:getColor
---@alias love.graphics.SpriteBatch.getColor
---| fun(): number, number, number, number

--- https://love2d.org/wiki/SpriteBatch:getCount
---@alias love.graphics.SpriteBatch.getCount
---| fun(): number

--- https://love2d.org/wiki/SpriteBatch:getImage
---@alias love.graphics.SpriteBatch.getImage
---| fun(): love.graphics.Image

--- https://love2d.org/wiki/SpriteBatch:getTexture
---@alias love.graphics.SpriteBatch.getTexture
---| fun(): love.graphics.Texture

--- https://love2d.org/wiki/SpriteBatch:set
---@alias love.graphics.SpriteBatch.set
---| fun(spriteindex: number|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil
---| fun(spriteindex: number|nil, quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil

--- https://love2d.org/wiki/SpriteBatch:setBufferSize
---@alias love.graphics.SpriteBatch.setBufferSize
---| fun(size: number|nil): nil

--- https://love2d.org/wiki/SpriteBatch:setColor
---@alias love.graphics.SpriteBatch.setColor
---| fun(r: number|nil, g: number|nil, b: number|nil, a: number|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/SpriteBatch:setDrawRange
---@alias love.graphics.SpriteBatch.setDrawRange
---| fun(start: number|nil, count: number|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/SpriteBatch:setImage
---@alias love.graphics.SpriteBatch.setImage
---| fun(image: love.graphics.Image|nil): nil

--- https://love2d.org/wiki/SpriteBatch:setLayer
---@alias love.graphics.SpriteBatch.setLayer
---| fun(spriteindex: number|nil, layerindex: number|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil
---| fun(spriteindex: number|nil, layerindex: number|nil, quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil
---| fun(spriteindex: number|nil, layerindex: number|nil, transform: love.math.Transform|nil): nil
---| fun(spriteindex: number|nil, layerindex: number|nil, quad: love.graphics.Quad|nil, transform: love.math.Transform|nil): nil

--- https://love2d.org/wiki/SpriteBatch:setTexture
---@alias love.graphics.SpriteBatch.setTexture
---| fun(texture: love.graphics.Texture|nil): nil

--- https://love2d.org/wiki/SpriteBatch:setq
---@alias love.graphics.SpriteBatch.setq
---| fun(id: number|nil, quad: love.graphics.Quad|nil, x: number|nil, y: number|nil, r: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): nil

--- https://love2d.org/wiki/SpriteBatch:unbind
---@alias love.graphics.SpriteBatch.unbind
---| fun(): nil

--- https://love2d.org/wiki/Text:add
---@alias love.graphics.Text.add
---| fun(textstring: string|nil, x: number|nil, y: number|nil, angle: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): number
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): number

--- https://love2d.org/wiki/Text:addf
---@alias love.graphics.Text.addf
---| fun(textstring: string|nil, wraplimit: number|nil, align: love.graphics.AlignMode|nil, x: number|nil, y: number|nil, angle: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): number
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): number

--- https://love2d.org/wiki/Text:clear
---@alias love.graphics.Text.clear
---| fun(): nil

--- https://love2d.org/wiki/Text:getDimensions
---@alias love.graphics.Text.getDimensions
---| fun(): number, number
---| fun(index: number|nil): number, number

--- https://love2d.org/wiki/Text:getFont
---@alias love.graphics.Text.getFont
---| fun(): love.graphics.Font

--- https://love2d.org/wiki/Text:getHeight
---@alias love.graphics.Text.getHeight
---| fun(): number
---| fun(index: number|nil): number

--- https://love2d.org/wiki/Text:getWidth
---@alias love.graphics.Text.getWidth
---| fun(): number
---| fun(index: number|nil): number

--- https://love2d.org/wiki/Text:set
---@alias love.graphics.Text.set
---| fun(textstring: string|nil): nil
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/Text:setFont
---@alias love.graphics.Text.setFont
---| fun(font: love.graphics.Font|nil): nil

--- https://love2d.org/wiki/Text:setf
---@alias love.graphics.Text.setf
---| fun(textstring: string|nil, wraplimit: number|nil, align: love.graphics.AlignMode|nil): nil
---| fun(coloredtext: table|nil, color1: table|nil, string1: string|nil, color2: table|nil, string2: string|nil, ...: table|string|nil): nil

--- https://love2d.org/wiki/Texture:getDPIScale
---@alias love.graphics.Texture.getDPIScale
---| fun(): number

--- https://love2d.org/wiki/Texture:getDepth
---@alias love.graphics.Texture.getDepth
---| fun(): number

--- https://love2d.org/wiki/Texture:getDepthSampleMode
---@alias love.graphics.Texture.getDepthSampleMode
---| fun(): love.graphics.CompareMode

--- https://love2d.org/wiki/Texture:getDimensions
---@alias love.graphics.Texture.getDimensions
---| fun(): number, number

--- https://love2d.org/wiki/Texture:getFilter
---@alias love.graphics.Texture.getFilter
---| fun(): love.graphics.FilterMode, love.graphics.FilterMode
---| fun(): love.graphics.FilterMode, love.graphics.FilterMode, number

--- https://love2d.org/wiki/Texture:getFormat
---@alias love.graphics.Texture.getFormat
---| fun(): love.font.PixelFormat

--- https://love2d.org/wiki/Texture:getHeight
---@alias love.graphics.Texture.getHeight
---| fun(): number

--- https://love2d.org/wiki/Texture:getLayerCount
---@alias love.graphics.Texture.getLayerCount
---| fun(): number

--- https://love2d.org/wiki/Texture:getMipmapCount
---@alias love.graphics.Texture.getMipmapCount
---| fun(): number

--- https://love2d.org/wiki/Texture:getMipmapFilter
---@alias love.graphics.Texture.getMipmapFilter
---| fun(): love.graphics.FilterMode, number

--- https://love2d.org/wiki/Texture:getPixelDimensions
---@alias love.graphics.Texture.getPixelDimensions
---| fun(): number, number

--- https://love2d.org/wiki/Texture:getPixelHeight
---@alias love.graphics.Texture.getPixelHeight
---| fun(): number

--- https://love2d.org/wiki/Texture:getPixelWidth
---@alias love.graphics.Texture.getPixelWidth
---| fun(): number

--- https://love2d.org/wiki/Texture:getTextureType
---@alias love.graphics.Texture.getTextureType
---| fun(): love.graphics.TextureType

--- https://love2d.org/wiki/Texture:getWidth
---@alias love.graphics.Texture.getWidth
---| fun(): number

--- https://love2d.org/wiki/Texture:getWrap
---@alias love.graphics.Texture.getWrap
---| fun(): love.graphics.WrapMode, love.graphics.WrapMode

--- https://love2d.org/wiki/Texture:isReadable
---@alias love.graphics.Texture.isReadable
---| fun(): boolean

--- https://love2d.org/wiki/Texture:setDepthSampleMode
---@alias love.graphics.Texture.setDepthSampleMode
---| fun(compare: love.graphics.CompareMode|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/Texture:setFilter
---@alias love.graphics.Texture.setFilter
---| fun(min: love.graphics.FilterMode|nil, mag: love.graphics.FilterMode|nil): nil

--- https://love2d.org/wiki/Texture:setMipmapFilter
---@alias love.graphics.Texture.setMipmapFilter
---| fun(filtermode: love.graphics.FilterMode|nil, sharpness: number|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/Texture:setWrap
---@alias love.graphics.Texture.setWrap
---| fun(horiz: love.graphics.WrapMode|nil, vert: love.graphics.WrapMode|nil): nil

--- https://love2d.org/wiki/Video:getDimensions
---@alias love.graphics.Video.getDimensions
---| fun(): number, number

--- https://love2d.org/wiki/Video:getFilter
---@alias love.graphics.Video.getFilter
---| fun(): love.graphics.FilterMode, love.graphics.FilterMode, number

--- https://love2d.org/wiki/Video:getHeight
---@alias love.graphics.Video.getHeight
---| fun(): number

--- https://love2d.org/wiki/Video:getSource
---@alias love.graphics.Video.getSource
---| fun(): love.audio.Source

--- https://love2d.org/wiki/Video:getStream
---@alias love.graphics.Video.getStream
---| fun(): love.video.VideoStream

--- https://love2d.org/wiki/Video:getWidth
---@alias love.graphics.Video.getWidth
---| fun(): number

--- https://love2d.org/wiki/Video:isPlaying
---@alias love.graphics.Video.isPlaying
---| fun(): boolean

--- https://love2d.org/wiki/Video:pause
---@alias love.graphics.Video.pause
---| fun(): nil

--- https://love2d.org/wiki/Video:play
---@alias love.graphics.Video.play
---| fun(): nil

--- https://love2d.org/wiki/Video:rewind
---@alias love.graphics.Video.rewind
---| fun(): nil

--- https://love2d.org/wiki/Video:seek
---@alias love.graphics.Video.seek
---| fun(offset: number|nil): nil

--- https://love2d.org/wiki/Video:setFilter
---@alias love.graphics.Video.setFilter
---| fun(min: love.graphics.FilterMode|nil, mag: love.graphics.FilterMode|nil, anisotropy: number|nil): nil

--- https://love2d.org/wiki/Video:setSource
---@alias love.graphics.Video.setSource
---| fun(source: love.audio.Source|nil): nil

--- https://love2d.org/wiki/Video:tell
---@alias love.graphics.Video.tell
---| fun(): number

--- https://love2d.org/wiki/CompressedImageData:getDimensions
---@alias love.image.CompressedImageData.getDimensions
---| fun(): number, number
---| fun(level: number|nil): number, number

--- https://love2d.org/wiki/CompressedImageData:getFormat
---@alias love.image.CompressedImageData.getFormat
---| fun(): love.image.CompressedImageFormat

--- https://love2d.org/wiki/CompressedImageData:getHeight
---@alias love.image.CompressedImageData.getHeight
---| fun(): number
---| fun(level: number|nil): number

--- https://love2d.org/wiki/CompressedImageData:getMipmapCount
---@alias love.image.CompressedImageData.getMipmapCount
---| fun(): number

--- https://love2d.org/wiki/CompressedImageData:getWidth
---@alias love.image.CompressedImageData.getWidth
---| fun(): number
---| fun(level: number|nil): number

--- https://love2d.org/wiki/ImageData:encode
---@alias love.image.ImageData.encode
---| fun(format: love.image.ImageEncodeFormat|nil, filename: string|nil): love.filesystem.FileData
---| fun(outFile: string|nil): nil
---| fun(outFile: string|nil, format: love.image.ImageEncodeFormat|nil): nil
---| fun(format: love.image.ImageEncodeFormat|nil): love.Data

--- https://love2d.org/wiki/ImageData:getDimensions
---@alias love.image.ImageData.getDimensions
---| fun(): number, number

--- https://love2d.org/wiki/ImageData:getFormat
---@alias love.image.ImageData.getFormat
---| fun(): love.font.PixelFormat

--- https://love2d.org/wiki/ImageData:getHeight
---@alias love.image.ImageData.getHeight
---| fun(): number

--- https://love2d.org/wiki/ImageData:getPixel
---@alias love.image.ImageData.getPixel
---| fun(x: number|nil, y: number|nil): number, number, number, number

--- https://love2d.org/wiki/ImageData:getString
---@alias love.image.ImageData.getString
---| fun(): string

--- https://love2d.org/wiki/ImageData:getWidth
---@alias love.image.ImageData.getWidth
---| fun(): number

--- https://love2d.org/wiki/ImageData:mapPixel
---@alias love.image.ImageData.mapPixel
---| fun(pixelFunction: function|nil): nil

--- https://love2d.org/wiki/ImageData:paste
---@alias love.image.ImageData.paste
---| fun(source: love.image.ImageData|nil, dx: number|nil, dy: number|nil, sx: number|nil, sy: number|nil, sw: number|nil, sh: number|nil): nil

--- https://love2d.org/wiki/ImageData:setPixel
---@alias love.image.ImageData.setPixel
---| fun(x: number|nil, y: number|nil, r: number|nil, g: number|nil, b: number|nil, a: number|nil): nil

--- https://love2d.org/wiki/Joystick:getAxes
---@alias love.joystick.Joystick.getAxes
---| fun(): number, number, number

--- https://love2d.org/wiki/Joystick:getAxis
---@alias love.joystick.Joystick.getAxis
---| fun(axis: number|nil): number

--- https://love2d.org/wiki/Joystick:getAxisCount
---@alias love.joystick.Joystick.getAxisCount
---| fun(): number

--- https://love2d.org/wiki/Joystick:getButtonCount
---@alias love.joystick.Joystick.getButtonCount
---| fun(): number

--- https://love2d.org/wiki/Joystick:getDeviceInfo
---@alias love.joystick.Joystick.getDeviceInfo
---| fun(): number, number, number

--- https://love2d.org/wiki/Joystick:getGUID
---@alias love.joystick.Joystick.getGUID
---| fun(): string

--- https://love2d.org/wiki/Joystick:getGamepadAxis
---@alias love.joystick.Joystick.getGamepadAxis
---| fun(axis: love.joystick.GamepadAxis|nil): number

--- https://love2d.org/wiki/Joystick:getGamepadMapping
---@alias love.joystick.Joystick.getGamepadMapping
---| fun(axis: love.joystick.GamepadAxis|nil): love.joystick.JoystickInputType, number, love.joystick.JoystickHat
---| fun(button: love.joystick.GamepadButton|nil): love.joystick.JoystickInputType, number, love.joystick.JoystickHat

--- https://love2d.org/wiki/Joystick:getGamepadMappingString
---@alias love.joystick.Joystick.getGamepadMappingString
---| fun(): string

--- https://love2d.org/wiki/Joystick:getHat
---@alias love.joystick.Joystick.getHat
---| fun(hat: number|nil): love.joystick.JoystickHat

--- https://love2d.org/wiki/Joystick:getHatCount
---@alias love.joystick.Joystick.getHatCount
---| fun(): number

--- https://love2d.org/wiki/Joystick:getID
---@alias love.joystick.Joystick.getID
---| fun(): number, number

--- https://love2d.org/wiki/Joystick:getName
---@alias love.joystick.Joystick.getName
---| fun(): string

--- https://love2d.org/wiki/Joystick:getVibration
---@alias love.joystick.Joystick.getVibration
---| fun(): number, number

--- https://love2d.org/wiki/Joystick:isConnected
---@alias love.joystick.Joystick.isConnected
---| fun(): boolean

--- https://love2d.org/wiki/Joystick:isDown
---@alias love.joystick.Joystick.isDown
---| fun(buttonN: number|nil, ...: number|nil): boolean
---| fun(buttons: table|nil, buttonN: number|nil, ...: number|nil): boolean

--- https://love2d.org/wiki/Joystick:isGamepad
---@alias love.joystick.Joystick.isGamepad
---| fun(): boolean

--- https://love2d.org/wiki/Joystick:isGamepadDown
---@alias love.joystick.Joystick.isGamepadDown
---| fun(buttonN: love.joystick.GamepadButton|nil): boolean
---| fun(buttons: table|nil, buttonN: love.joystick.GamepadButton|nil): boolean

--- https://love2d.org/wiki/Joystick:isVibrationSupported
---@alias love.joystick.Joystick.isVibrationSupported
---| fun(): boolean

--- https://love2d.org/wiki/Joystick:setVibration
---@alias love.joystick.Joystick.setVibration
---| fun(left: number|nil, right: number|nil): boolean
---| fun(): boolean
---| fun(left: number|nil, right: number|nil, duration: number|nil): boolean

--- https://love2d.org/wiki/BezierCurve:evaluate
---@alias love.math.BezierCurve.evaluate
---| fun(t: number|nil): number, number

--- https://love2d.org/wiki/BezierCurve:getControlPoint
---@alias love.math.BezierCurve.getControlPoint
---| fun(i: number|nil): number, number

--- https://love2d.org/wiki/BezierCurve:getControlPointCount
---@alias love.math.BezierCurve.getControlPointCount
---| fun(): number

--- https://love2d.org/wiki/BezierCurve:getDegree
---@alias love.math.BezierCurve.getDegree
---| fun(): number

--- https://love2d.org/wiki/BezierCurve:getDerivative
---@alias love.math.BezierCurve.getDerivative
---| fun(): love.math.BezierCurve

--- https://love2d.org/wiki/BezierCurve:getSegment
---@alias love.math.BezierCurve.getSegment
---| fun(startpoint: number|nil, endpoint: number|nil): love.math.BezierCurve

--- https://love2d.org/wiki/BezierCurve:insertControlPoint
---@alias love.math.BezierCurve.insertControlPoint
---| fun(x: number|nil, y: number|nil, i: number|nil): nil

--- https://love2d.org/wiki/BezierCurve:removeControlPoint
---@alias love.math.BezierCurve.removeControlPoint
---| fun(index: number|nil): nil

--- https://love2d.org/wiki/BezierCurve:render
---@alias love.math.BezierCurve.render
---| fun(depth: number|nil): table

--- https://love2d.org/wiki/BezierCurve:renderSegment
---@alias love.math.BezierCurve.renderSegment
---| fun(startpoint: number|nil, endpoint: number|nil, depth: number|nil): table

--- https://love2d.org/wiki/BezierCurve:rotate
---@alias love.math.BezierCurve.rotate
---| fun(angle: number|nil, ox: number|nil, oy: number|nil): nil

--- https://love2d.org/wiki/BezierCurve:scale
---@alias love.math.BezierCurve.scale
---| fun(s: number|nil, ox: number|nil, oy: number|nil): nil

--- https://love2d.org/wiki/BezierCurve:setControlPoint
---@alias love.math.BezierCurve.setControlPoint
---| fun(i: number|nil, x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/BezierCurve:translate
---@alias love.math.BezierCurve.translate
---| fun(dx: number|nil, dy: number|nil): nil

--- https://love2d.org/wiki/RandomGenerator:getSeed
---@alias love.math.RandomGenerator.getSeed
---| fun(): number, number

--- https://love2d.org/wiki/RandomGenerator:getState
---@alias love.math.RandomGenerator.getState
---| fun(): string

--- https://love2d.org/wiki/RandomGenerator:random
---@alias love.math.RandomGenerator.random
---| fun(): number
---| fun(max: number|nil): number
---| fun(min: number|nil, max: number|nil): number

--- https://love2d.org/wiki/RandomGenerator:randomNormal
---@alias love.math.RandomGenerator.randomNormal
---| fun(stddev: number|nil, mean: number|nil): number

--- https://love2d.org/wiki/RandomGenerator:setSeed
---@alias love.math.RandomGenerator.setSeed
---| fun(seed: number|nil): nil
---| fun(low: number|nil, high: number|nil): nil

--- https://love2d.org/wiki/RandomGenerator:setState
---@alias love.math.RandomGenerator.setState
---| fun(state: string|nil): nil

--- https://love2d.org/wiki/Transform:apply
---@alias love.math.Transform.apply
---| fun(other: love.math.Transform|nil): love.math.Transform

--- https://love2d.org/wiki/Transform:clone
---@alias love.math.Transform.clone
---| fun(): love.math.Transform

--- https://love2d.org/wiki/Transform:getMatrix
---@alias love.math.Transform.getMatrix
---| fun(): number, number, number, number

--- https://love2d.org/wiki/Transform:inverse
---@alias love.math.Transform.inverse
---| fun(): love.math.Transform

--- https://love2d.org/wiki/Transform:inverseTransformPoint
---@alias love.math.Transform.inverseTransformPoint
---| fun(localX: number|nil, localY: number|nil): number, number

--- https://love2d.org/wiki/Transform:isAffine2DTransform
---@alias love.math.Transform.isAffine2DTransform
---| fun(): boolean

--- https://love2d.org/wiki/Transform:reset
---@alias love.math.Transform.reset
---| fun(): love.math.Transform

--- https://love2d.org/wiki/Transform:rotate
---@alias love.math.Transform.rotate
---| fun(angle: number|nil): love.math.Transform

--- https://love2d.org/wiki/Transform:scale
---@alias love.math.Transform.scale
---| fun(sx: number|nil, sy: number|nil): love.math.Transform

--- https://love2d.org/wiki/Transform:setMatrix
---@alias love.math.Transform.setMatrix
---| fun(e1_1: number|nil, e1_2: number|nil, ...: number|nil, e4_4: number|nil): love.math.Transform
---| fun(layout: love.math.MatrixLayout|nil, e1_1: number|nil, e1_2: number|nil, ...: number|nil, e4_4: number|nil): love.math.Transform
---| fun(layout: love.math.MatrixLayout|nil, matrix: table|nil): love.math.Transform
---| fun(layout: love.math.MatrixLayout|nil, matrix: table|nil): love.math.Transform

--- https://love2d.org/wiki/Transform:setTransformation
---@alias love.math.Transform.setTransformation
---| fun(x: number|nil, y: number|nil, angle: number|nil, sx: number|nil, sy: number|nil, ox: number|nil, oy: number|nil, kx: number|nil, ky: number|nil): love.math.Transform

--- https://love2d.org/wiki/Transform:shear
---@alias love.math.Transform.shear
---| fun(kx: number|nil, ky: number|nil): love.math.Transform

--- https://love2d.org/wiki/Transform:transformPoint
---@alias love.math.Transform.transformPoint
---| fun(globalX: number|nil, globalY: number|nil): number, number

--- https://love2d.org/wiki/Transform:translate
---@alias love.math.Transform.translate
---| fun(dx: number|nil, dy: number|nil): love.math.Transform

--- https://love2d.org/wiki/Cursor:getType
---@alias love.mouse.Cursor.getType
---| fun(): love.mouse.CursorType

--- https://love2d.org/wiki/Body:applyAngularImpulse
---@alias love.physics.Body.applyAngularImpulse
---| fun(impulse: number|nil): nil

--- https://love2d.org/wiki/Body:applyForce
---@alias love.physics.Body.applyForce
---| fun(fx: number|nil, fy: number|nil): nil
---| fun(fx: number|nil, fy: number|nil, x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/Body:applyImpulse
---@alias love.physics.Body.applyImpulse
---| fun(ix: number|nil, iy: number|nil, x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/Body:applyLinearImpulse
---@alias love.physics.Body.applyLinearImpulse
---| fun(ix: number|nil, iy: number|nil): nil
---| fun(ix: number|nil, iy: number|nil, x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/Body:applyTorque
---@alias love.physics.Body.applyTorque
---| fun(torque: number|nil): nil

--- https://love2d.org/wiki/Body:destroy
---@alias love.physics.Body.destroy
---| fun(): nil

--- https://love2d.org/wiki/Body:getAllowSleeping
---@alias love.physics.Body.getAllowSleeping
---| fun(): boolean

--- https://love2d.org/wiki/Body:getAngle
---@alias love.physics.Body.getAngle
---| fun(): number

--- https://love2d.org/wiki/Body:getAngularDamping
---@alias love.physics.Body.getAngularDamping
---| fun(): number

--- https://love2d.org/wiki/Body:getAngularVelocity
---@alias love.physics.Body.getAngularVelocity
---| fun(): number

--- https://love2d.org/wiki/Body:getContactList
---@alias love.physics.Body.getContactList
---| fun(): table

--- https://love2d.org/wiki/Body:getContacts
---@alias love.physics.Body.getContacts
---| fun(): table

--- https://love2d.org/wiki/Body:getFixtureList
---@alias love.physics.Body.getFixtureList
---| fun(): table

--- https://love2d.org/wiki/Body:getFixtures
---@alias love.physics.Body.getFixtures
---| fun(): table

--- https://love2d.org/wiki/Body:getGravityScale
---@alias love.physics.Body.getGravityScale
---| fun(): number

--- https://love2d.org/wiki/Body:getInertia
---@alias love.physics.Body.getInertia
---| fun(): number

--- https://love2d.org/wiki/Body:getJointList
---@alias love.physics.Body.getJointList
---| fun(): table

--- https://love2d.org/wiki/Body:getJoints
---@alias love.physics.Body.getJoints
---| fun(): table

--- https://love2d.org/wiki/Body:getLinearDamping
---@alias love.physics.Body.getLinearDamping
---| fun(): number

--- https://love2d.org/wiki/Body:getLinearVelocity
---@alias love.physics.Body.getLinearVelocity
---| fun(): number, number

--- https://love2d.org/wiki/Body:getLinearVelocityFromLocalPoint
---@alias love.physics.Body.getLinearVelocityFromLocalPoint
---| fun(x: number|nil, y: number|nil): number, number

--- https://love2d.org/wiki/Body:getLinearVelocityFromWorldPoint
---@alias love.physics.Body.getLinearVelocityFromWorldPoint
---| fun(x: number|nil, y: number|nil): number, number

--- https://love2d.org/wiki/Body:getLocalCenter
---@alias love.physics.Body.getLocalCenter
---| fun(): number, number

--- https://love2d.org/wiki/Body:getLocalPoint
---@alias love.physics.Body.getLocalPoint
---| fun(worldX: number|nil, worldY: number|nil): number, number

--- https://love2d.org/wiki/Body:getLocalPoints
---@alias love.physics.Body.getLocalPoints
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, ...: number|nil): number, number, number, number, number

--- https://love2d.org/wiki/Body:getLocalVector
---@alias love.physics.Body.getLocalVector
---| fun(worldX: number|nil, worldY: number|nil): number, number

--- https://love2d.org/wiki/Body:getMass
---@alias love.physics.Body.getMass
---| fun(): number

--- https://love2d.org/wiki/Body:getMassData
---@alias love.physics.Body.getMassData
---| fun(): number, number, number, number

--- https://love2d.org/wiki/Body:getPosition
---@alias love.physics.Body.getPosition
---| fun(): number, number

--- https://love2d.org/wiki/Body:getType
---@alias love.physics.Body.getType
---| fun(): love.physics.BodyType

--- https://love2d.org/wiki/Body:getUserData
---@alias love.physics.Body.getUserData
---| fun(): any

--- https://love2d.org/wiki/Body:getWorld
---@alias love.physics.Body.getWorld
---| fun(): love.physics.World

--- https://love2d.org/wiki/Body:getWorldCenter
---@alias love.physics.Body.getWorldCenter
---| fun(): number, number

--- https://love2d.org/wiki/Body:getWorldPoint
---@alias love.physics.Body.getWorldPoint
---| fun(localX: number|nil, localY: number|nil): number, number

--- https://love2d.org/wiki/Body:getWorldPoints
---@alias love.physics.Body.getWorldPoints
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil): number, number, number, number

--- https://love2d.org/wiki/Body:getWorldVector
---@alias love.physics.Body.getWorldVector
---| fun(localX: number|nil, localY: number|nil): number, number

--- https://love2d.org/wiki/Body:getX
---@alias love.physics.Body.getX
---| fun(): number

--- https://love2d.org/wiki/Body:getY
---@alias love.physics.Body.getY
---| fun(): number

--- https://love2d.org/wiki/Body:isActive
---@alias love.physics.Body.isActive
---| fun(): boolean

--- https://love2d.org/wiki/Body:isAwake
---@alias love.physics.Body.isAwake
---| fun(): boolean

--- https://love2d.org/wiki/Body:isBullet
---@alias love.physics.Body.isBullet
---| fun(): boolean

--- https://love2d.org/wiki/Body:isDestroyed
---@alias love.physics.Body.isDestroyed
---| fun(): boolean

--- https://love2d.org/wiki/Body:isDynamic
---@alias love.physics.Body.isDynamic
---| fun(): boolean

--- https://love2d.org/wiki/Body:isFixedRotation
---@alias love.physics.Body.isFixedRotation
---| fun(): boolean

--- https://love2d.org/wiki/Body:isFrozen
---@alias love.physics.Body.isFrozen
---| fun(): boolean

--- https://love2d.org/wiki/Body:isSleeping
---@alias love.physics.Body.isSleeping
---| fun(): boolean

--- https://love2d.org/wiki/Body:isSleepingAllowed
---@alias love.physics.Body.isSleepingAllowed
---| fun(): boolean

--- https://love2d.org/wiki/Body:isStatic
---@alias love.physics.Body.isStatic
---| fun(): boolean

--- https://love2d.org/wiki/Body:isTouching
---@alias love.physics.Body.isTouching
---| fun(otherbody: love.physics.Body|nil): boolean

--- https://love2d.org/wiki/Body:putToSleep
---@alias love.physics.Body.putToSleep
---| fun(): nil

--- https://love2d.org/wiki/Body:resetMassData
---@alias love.physics.Body.resetMassData
---| fun(): nil

--- https://love2d.org/wiki/Body:setActive
---@alias love.physics.Body.setActive
---| fun(active: boolean|nil): nil

--- https://love2d.org/wiki/Body:setAllowSleeping
---@alias love.physics.Body.setAllowSleeping
---| fun(permission: boolean|nil): nil

--- https://love2d.org/wiki/Body:setAngle
---@alias love.physics.Body.setAngle
---| fun(angle: number|nil): nil

--- https://love2d.org/wiki/Body:setAngularDamping
---@alias love.physics.Body.setAngularDamping
---| fun(damping: number|nil): nil

--- https://love2d.org/wiki/Body:setAngularVelocity
---@alias love.physics.Body.setAngularVelocity
---| fun(w: number|nil): nil

--- https://love2d.org/wiki/Body:setAwake
---@alias love.physics.Body.setAwake
---| fun(awake: boolean|nil): nil

--- https://love2d.org/wiki/Body:setBullet
---@alias love.physics.Body.setBullet
---| fun(status: boolean|nil): nil

--- https://love2d.org/wiki/Body:setFixedRotation
---@alias love.physics.Body.setFixedRotation
---| fun(isFixed: boolean|nil): nil

--- https://love2d.org/wiki/Body:setGravityScale
---@alias love.physics.Body.setGravityScale
---| fun(scale: number|nil): nil

--- https://love2d.org/wiki/Body:setInertia
---@alias love.physics.Body.setInertia
---| fun(inertia: number|nil): nil

--- https://love2d.org/wiki/Body:setLinearDamping
---@alias love.physics.Body.setLinearDamping
---| fun(ld: number|nil): nil

--- https://love2d.org/wiki/Body:setLinearVelocity
---@alias love.physics.Body.setLinearVelocity
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/Body:setMass
---@alias love.physics.Body.setMass
---| fun(mass: number|nil): nil
---| fun(x: number|nil, y: number|nil, m: number|nil, i: number|nil): nil

--- https://love2d.org/wiki/Body:setMassData
---@alias love.physics.Body.setMassData
---| fun(x: number|nil, y: number|nil, mass: number|nil, inertia: number|nil): nil

--- https://love2d.org/wiki/Body:setMassFromShapes
---@alias love.physics.Body.setMassFromShapes
---| fun(): nil

--- https://love2d.org/wiki/Body:setPosition
---@alias love.physics.Body.setPosition
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/Body:setSleepingAllowed
---@alias love.physics.Body.setSleepingAllowed
---| fun(allowed: boolean|nil): nil

--- https://love2d.org/wiki/Body:setType
---@alias love.physics.Body.setType
---| fun(type: love.physics.BodyType|nil): nil

--- https://love2d.org/wiki/Body:setUserData
---@alias love.physics.Body.setUserData
---| fun(value: any|nil): nil

--- https://love2d.org/wiki/Body:setX
---@alias love.physics.Body.setX
---| fun(x: number|nil): nil

--- https://love2d.org/wiki/Body:setY
---@alias love.physics.Body.setY
---| fun(y: number|nil): nil

--- https://love2d.org/wiki/Body:wakeUp
---@alias love.physics.Body.wakeUp
---| fun(): nil

--- https://love2d.org/wiki/Contact:getChildren
---@alias love.physics.Contact.getChildren
---| fun(): number, number

--- https://love2d.org/wiki/Contact:getFixtures
---@alias love.physics.Contact.getFixtures
---| fun(): love.physics.Fixture, love.physics.Fixture

--- https://love2d.org/wiki/Contact:getFriction
---@alias love.physics.Contact.getFriction
---| fun(): number

--- https://love2d.org/wiki/Contact:getNormal
---@alias love.physics.Contact.getNormal
---| fun(): number, number

--- https://love2d.org/wiki/Contact:getPosition
---@alias love.physics.Contact.getPosition
---| fun(): number, number

--- https://love2d.org/wiki/Contact:getPositions
---@alias love.physics.Contact.getPositions
---| fun(): number, number, number, number

--- https://love2d.org/wiki/Contact:getRestitution
---@alias love.physics.Contact.getRestitution
---| fun(): number

--- https://love2d.org/wiki/Contact:getSeparation
---@alias love.physics.Contact.getSeparation
---| fun(): number

--- https://love2d.org/wiki/Contact:getVelocity
---@alias love.physics.Contact.getVelocity
---| fun(): number, number

--- https://love2d.org/wiki/Contact:isEnabled
---@alias love.physics.Contact.isEnabled
---| fun(): boolean

--- https://love2d.org/wiki/Contact:isTouching
---@alias love.physics.Contact.isTouching
---| fun(): boolean

--- https://love2d.org/wiki/Contact:resetFriction
---@alias love.physics.Contact.resetFriction
---| fun(): nil

--- https://love2d.org/wiki/Contact:resetRestitution
---@alias love.physics.Contact.resetRestitution
---| fun(): nil

--- https://love2d.org/wiki/Contact:setEnabled
---@alias love.physics.Contact.setEnabled
---| fun(enabled: boolean|nil): nil

--- https://love2d.org/wiki/Contact:setFriction
---@alias love.physics.Contact.setFriction
---| fun(friction: number|nil): nil

--- https://love2d.org/wiki/Contact:setRestitution
---@alias love.physics.Contact.setRestitution
---| fun(restitution: number|nil): nil

--- https://love2d.org/wiki/Fixture:destroy
---@alias love.physics.Fixture.destroy
---| fun(): nil

--- https://love2d.org/wiki/Fixture:getBody
---@alias love.physics.Fixture.getBody
---| fun(): love.physics.Body

--- https://love2d.org/wiki/Fixture:getBoundingBox
---@alias love.physics.Fixture.getBoundingBox
---| fun(index: number|nil): number, number, number, number

--- https://love2d.org/wiki/Fixture:getCategory
---@alias love.physics.Fixture.getCategory
---| fun(): number, number

--- https://love2d.org/wiki/Fixture:getDensity
---@alias love.physics.Fixture.getDensity
---| fun(): number

--- https://love2d.org/wiki/Fixture:getFilterData
---@alias love.physics.Fixture.getFilterData
---| fun(): number, number, number

--- https://love2d.org/wiki/Fixture:getFriction
---@alias love.physics.Fixture.getFriction
---| fun(): number

--- https://love2d.org/wiki/Fixture:getGroupIndex
---@alias love.physics.Fixture.getGroupIndex
---| fun(): number

--- https://love2d.org/wiki/Fixture:getMask
---@alias love.physics.Fixture.getMask
---| fun(): number, number

--- https://love2d.org/wiki/Fixture:getMassData
---@alias love.physics.Fixture.getMassData
---| fun(): number, number, number, number

--- https://love2d.org/wiki/Fixture:getRestitution
---@alias love.physics.Fixture.getRestitution
---| fun(): number

--- https://love2d.org/wiki/Fixture:getShape
---@alias love.physics.Fixture.getShape
---| fun(): love.physics.Shape

--- https://love2d.org/wiki/Fixture:getUserData
---@alias love.physics.Fixture.getUserData
---| fun(): any

--- https://love2d.org/wiki/Fixture:isDestroyed
---@alias love.physics.Fixture.isDestroyed
---| fun(): boolean

--- https://love2d.org/wiki/Fixture:isSensor
---@alias love.physics.Fixture.isSensor
---| fun(): boolean

--- https://love2d.org/wiki/Fixture:rayCast
---@alias love.physics.Fixture.rayCast
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, maxFraction: number|nil, childIndex: number|nil): number, number, number

--- https://love2d.org/wiki/Fixture:setCategory
---@alias love.physics.Fixture.setCategory
---| fun(category1: number|nil, category2: number|nil): nil

--- https://love2d.org/wiki/Fixture:setDensity
---@alias love.physics.Fixture.setDensity
---| fun(density: number|nil): nil

--- https://love2d.org/wiki/Fixture:setFilterData
---@alias love.physics.Fixture.setFilterData
---| fun(categories: number|nil, mask: number|nil, group: number|nil): nil

--- https://love2d.org/wiki/Fixture:setFriction
---@alias love.physics.Fixture.setFriction
---| fun(friction: number|nil): nil

--- https://love2d.org/wiki/Fixture:setGroupIndex
---@alias love.physics.Fixture.setGroupIndex
---| fun(group: number|nil): nil

--- https://love2d.org/wiki/Fixture:setMask
---@alias love.physics.Fixture.setMask
---| fun(mask1: number|nil, mask2: number|nil, ...: number|nil): nil

--- https://love2d.org/wiki/Fixture:setRestitution
---@alias love.physics.Fixture.setRestitution
---| fun(restitution: number|nil): nil

--- https://love2d.org/wiki/Fixture:setSensor
---@alias love.physics.Fixture.setSensor
---| fun(sensor: boolean|nil): nil

--- https://love2d.org/wiki/Fixture:setUserData
---@alias love.physics.Fixture.setUserData
---| fun(value: any|nil): nil

--- https://love2d.org/wiki/Fixture:testPoint
---@alias love.physics.Fixture.testPoint
---| fun(x: number|nil, y: number|nil): boolean

--- https://love2d.org/wiki/Joint:destroy
---@alias love.physics.Joint.destroy
---| fun(): nil

--- https://love2d.org/wiki/Joint:getAnchors
---@alias love.physics.Joint.getAnchors
---| fun(): number, number, number, number

--- https://love2d.org/wiki/Joint:getBodies
---@alias love.physics.Joint.getBodies
---| fun(): love.physics.Body, love.physics.Body

--- https://love2d.org/wiki/Joint:getCollideConnected
---@alias love.physics.Joint.getCollideConnected
---| fun(): boolean

--- https://love2d.org/wiki/Joint:getReactionForce
---@alias love.physics.Joint.getReactionForce
---| fun(x: number|nil): number, number
---| fun(): number, number

--- https://love2d.org/wiki/Joint:getReactionTorque
---@alias love.physics.Joint.getReactionTorque
---| fun(invdt: number|nil): number
---| fun(): number

--- https://love2d.org/wiki/Joint:getType
---@alias love.physics.Joint.getType
---| fun(): love.physics.JointType

--- https://love2d.org/wiki/Joint:getUserData
---@alias love.physics.Joint.getUserData
---| fun(): any

--- https://love2d.org/wiki/Joint:isDestroyed
---@alias love.physics.Joint.isDestroyed
---| fun(): boolean

--- https://love2d.org/wiki/Joint:setCollideConnected
---@alias love.physics.Joint.setCollideConnected
---| fun(collide: boolean|nil): nil

--- https://love2d.org/wiki/Joint:setUserData
---@alias love.physics.Joint.setUserData
---| fun(value: love.Variant|nil): nil

--- https://love2d.org/wiki/Shape:computeAABB
---@alias love.physics.Shape.computeAABB
---| fun(tx: number|nil, ty: number|nil, tr: number|nil, childIndex: number|nil): number, number, number, number

--- https://love2d.org/wiki/Shape:computeMass
---@alias love.physics.Shape.computeMass
---| fun(density: number|nil): number, number, number, number

--- https://love2d.org/wiki/Shape:destroy
---@alias love.physics.Shape.destroy
---| fun(): nil

--- https://love2d.org/wiki/Shape:getBody
---@alias love.physics.Shape.getBody
---| fun(): love.physics.Body

--- https://love2d.org/wiki/Shape:getBoundingBox
---@alias love.physics.Shape.getBoundingBox
---| fun(): number, number, number, number, number, number, number, number

--- https://love2d.org/wiki/Shape:getCategory
---@alias love.physics.Shape.getCategory
---| fun(): number

--- https://love2d.org/wiki/Shape:getCategoryBits
---@alias love.physics.Shape.getCategoryBits
---| fun(): number

--- https://love2d.org/wiki/Shape:getChildCount
---@alias love.physics.Shape.getChildCount
---| fun(): number

--- https://love2d.org/wiki/Shape:getData
---@alias love.physics.Shape.getData
---| fun(): any

--- https://love2d.org/wiki/Shape:getDensity
---@alias love.physics.Shape.getDensity
---| fun(): number

--- https://love2d.org/wiki/Shape:getFilterData
---@alias love.physics.Shape.getFilterData
---| fun(): number, number, number

--- https://love2d.org/wiki/Shape:getFriction
---@alias love.physics.Shape.getFriction
---| fun(): number

--- https://love2d.org/wiki/Shape:getMask
---@alias love.physics.Shape.getMask
---| fun(): number

--- https://love2d.org/wiki/Shape:getRadius
---@alias love.physics.Shape.getRadius
---| fun(): number

--- https://love2d.org/wiki/Shape:getRestitution
---@alias love.physics.Shape.getRestitution
---| fun(): number

--- https://love2d.org/wiki/Shape:getType
---@alias love.physics.Shape.getType
---| fun(): love.physics.ShapeType

--- https://love2d.org/wiki/Shape:isSensor
---@alias love.physics.Shape.isSensor
---| fun(): boolean

--- https://love2d.org/wiki/Shape:rayCast
---@alias love.physics.Shape.rayCast
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, maxFraction: number|nil, tx: number|nil, ty: number|nil, tr: number|nil, childIndex: number|nil): number, number, number

--- https://love2d.org/wiki/Shape:setCategory
---@alias love.physics.Shape.setCategory
---| fun(...: number|nil): nil

--- https://love2d.org/wiki/Shape:setData
---@alias love.physics.Shape.setData
---| fun(v: any|nil): nil

--- https://love2d.org/wiki/Shape:setDensity
---@alias love.physics.Shape.setDensity
---| fun(density: number|nil): nil

--- https://love2d.org/wiki/Shape:setFilterData
---@alias love.physics.Shape.setFilterData
---| fun(categoryBits: number|nil, maskBits: number|nil, groupIndex: number|nil): nil

--- https://love2d.org/wiki/Shape:setFriction
---@alias love.physics.Shape.setFriction
---| fun(friction: number|nil): nil

--- https://love2d.org/wiki/Shape:setMask
---@alias love.physics.Shape.setMask
---| fun(...: number|nil): nil

--- https://love2d.org/wiki/Shape:setRestitution
---@alias love.physics.Shape.setRestitution
---| fun(restitution: number|nil): nil

--- https://love2d.org/wiki/Shape:setSensor
---@alias love.physics.Shape.setSensor
---| fun(sensor: boolean|nil): nil

--- https://love2d.org/wiki/Shape:testPoint
---@alias love.physics.Shape.testPoint
---| fun(tx: number|nil, ty: number|nil, tr: number|nil, x: number|nil, y: number|nil): boolean
---| fun(x: number|nil, y: number|nil): boolean

--- https://love2d.org/wiki/Shape:testSegment
---@alias love.physics.Shape.testSegment
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil): number, number, number

--- https://love2d.org/wiki/World:destroy
---@alias love.physics.World.destroy
---| fun(): nil

--- https://love2d.org/wiki/World:getAllowSleeping
---@alias love.physics.World.getAllowSleeping
---| fun(): boolean

--- https://love2d.org/wiki/World:getBodies
---@alias love.physics.World.getBodies
---| fun(): table

--- https://love2d.org/wiki/World:getBodyCount
---@alias love.physics.World.getBodyCount
---| fun(): number

--- https://love2d.org/wiki/World:getBodyList
---@alias love.physics.World.getBodyList
---| fun(): table

--- https://love2d.org/wiki/World:getCallbacks
---@alias love.physics.World.getCallbacks
---| fun(): function, function, function, function
---| fun(): function, function, function, function

--- https://love2d.org/wiki/World:getContactCount
---@alias love.physics.World.getContactCount
---| fun(): number

--- https://love2d.org/wiki/World:getContactFilter
---@alias love.physics.World.getContactFilter
---| fun(): function

--- https://love2d.org/wiki/World:getContactList
---@alias love.physics.World.getContactList
---| fun(): table

--- https://love2d.org/wiki/World:getContacts
---@alias love.physics.World.getContacts
---| fun(): table

--- https://love2d.org/wiki/World:getGravity
---@alias love.physics.World.getGravity
---| fun(): number, number

--- https://love2d.org/wiki/World:getJointCount
---@alias love.physics.World.getJointCount
---| fun(): number

--- https://love2d.org/wiki/World:getJointList
---@alias love.physics.World.getJointList
---| fun(): table

--- https://love2d.org/wiki/World:getJoints
---@alias love.physics.World.getJoints
---| fun(): table

--- https://love2d.org/wiki/World:isAllowSleep
---@alias love.physics.World.isAllowSleep
---| fun(): boolean

--- https://love2d.org/wiki/World:isDestroyed
---@alias love.physics.World.isDestroyed
---| fun(): boolean

--- https://love2d.org/wiki/World:isLocked
---@alias love.physics.World.isLocked
---| fun(): boolean

--- https://love2d.org/wiki/World:isSleepingAllowed
---@alias love.physics.World.isSleepingAllowed
---| fun(): boolean

--- https://love2d.org/wiki/World:queryBoundingBox
---@alias love.physics.World.queryBoundingBox
---| fun(topLeftX: number|nil, topLeftY: number|nil, bottomRightX: number|nil, bottomRightY: number|nil, callback: function|nil): nil

--- https://love2d.org/wiki/World:rayCast
---@alias love.physics.World.rayCast
---| fun(x1: number|nil, y1: number|nil, x2: number|nil, y2: number|nil, callback: function|nil): nil
---| fun(fixture: love.physics.Fixture|nil, x: number|nil, y: number|nil, xn: number|nil, yn: number|nil, fraction: number|nil): number

--- https://love2d.org/wiki/World:setAllowSleep
---@alias love.physics.World.setAllowSleep
---| fun(permission: boolean|nil): nil

--- https://love2d.org/wiki/World:setAllowSleeping
---@alias love.physics.World.setAllowSleeping
---| fun(allowSleep: boolean|nil): nil

--- https://love2d.org/wiki/World:setCallbacks
---@alias love.physics.World.setCallbacks
---| fun(beginContact: function|nil, endContact: function|nil, preSolve: function|nil, postSolve: function|nil): nil
---| fun(add: function|nil, persist: function|nil, remove: function|nil, result: function|nil): nil

--- https://love2d.org/wiki/World:setContactFilter
---@alias love.physics.World.setContactFilter
---| fun(filter: function|nil): nil

--- https://love2d.org/wiki/World:setGravity
---@alias love.physics.World.setGravity
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/World:setMeter
---@alias love.physics.World.setMeter
---| fun(scale: number|nil): nil

--- https://love2d.org/wiki/World:setSleepingAllowed
---@alias love.physics.World.setSleepingAllowed
---| fun(allow: boolean|nil): nil

--- https://love2d.org/wiki/World:translateOrigin
---@alias love.physics.World.translateOrigin
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/World:update
---@alias love.physics.World.update
---| fun(dt: number|nil): nil

--- https://love2d.org/wiki/Decoder:clone
---@alias love.sound.Decoder.clone
---| fun(): love.sound.Decoder

--- https://love2d.org/wiki/Decoder:decode
---@alias love.sound.Decoder.decode
---| fun(): love.sound.SoundData

--- https://love2d.org/wiki/Decoder:getBitDepth
---@alias love.sound.Decoder.getBitDepth
---| fun(): number

--- https://love2d.org/wiki/Decoder:getBits
---@alias love.sound.Decoder.getBits
---| fun(): number

--- https://love2d.org/wiki/Decoder:getChannelCount
---@alias love.sound.Decoder.getChannelCount
---| fun(): number

--- https://love2d.org/wiki/Decoder:getChannels
---@alias love.sound.Decoder.getChannels
---| fun(): number

--- https://love2d.org/wiki/Decoder:getDuration
---@alias love.sound.Decoder.getDuration
---| fun(): number

--- https://love2d.org/wiki/Decoder:getSampleRate
---@alias love.sound.Decoder.getSampleRate
---| fun(): number

--- https://love2d.org/wiki/Decoder:seek
---@alias love.sound.Decoder.seek
---| fun(offset: number|nil): nil

--- https://love2d.org/wiki/SoundData:getBitDepth
---@alias love.sound.SoundData.getBitDepth
---| fun(): number

--- https://love2d.org/wiki/SoundData:getBits
---@alias love.sound.SoundData.getBits
---| fun(): number

--- https://love2d.org/wiki/SoundData:getChannelCount
---@alias love.sound.SoundData.getChannelCount
---| fun(): number

--- https://love2d.org/wiki/SoundData:getChannels
---@alias love.sound.SoundData.getChannels
---| fun(): number

--- https://love2d.org/wiki/SoundData:getDuration
---@alias love.sound.SoundData.getDuration
---| fun(): number

--- https://love2d.org/wiki/SoundData:getSample
---@alias love.sound.SoundData.getSample
---| fun(i: number|nil): number
---| fun(i: number|nil, channel: number|nil): number

--- https://love2d.org/wiki/SoundData:getSampleCount
---@alias love.sound.SoundData.getSampleCount
---| fun(): number

--- https://love2d.org/wiki/SoundData:getSampleRate
---@alias love.sound.SoundData.getSampleRate
---| fun(): number

--- https://love2d.org/wiki/SoundData:setSample
---@alias love.sound.SoundData.setSample
---| fun(i: number|nil, sample: number|nil): nil
---| fun(i: number|nil, channel: number|nil, sample: number|nil): nil

--- https://love2d.org/wiki/Channel:clear
---@alias love.thread.Channel.clear
---| fun(): nil

--- https://love2d.org/wiki/Channel:demand
---@alias love.thread.Channel.demand
---| fun(): love.Variant
---| fun(timeout: number|nil): love.Variant

--- https://love2d.org/wiki/Channel:getCount
---@alias love.thread.Channel.getCount
---| fun(): number

--- https://love2d.org/wiki/Channel:hasRead
---@alias love.thread.Channel.hasRead
---| fun(id: number|nil): boolean

--- https://love2d.org/wiki/Channel:peek
---@alias love.thread.Channel.peek
---| fun(): love.Variant

--- https://love2d.org/wiki/Channel:performAtomic
---@alias love.thread.Channel.performAtomic
---| fun(func: function|nil, arg1: any|nil, ...: any|nil): any, any

--- https://love2d.org/wiki/Channel:pop
---@alias love.thread.Channel.pop
---| fun(): love.Variant

--- https://love2d.org/wiki/Channel:push
---@alias love.thread.Channel.push
---| fun(value: love.Variant|nil): nil

--- https://love2d.org/wiki/Channel:supply
---@alias love.thread.Channel.supply
---| fun(value: love.Variant|nil): nil
---| fun(value: love.Variant|nil, timeout: number|nil): boolean

--- https://love2d.org/wiki/Thread:demand
---@alias love.thread.Thread.demand
---| fun(name: string|nil): love.Variant

--- https://love2d.org/wiki/Thread:get
---@alias love.thread.Thread.get
---| fun(name: string|nil): love.Variant

--- https://love2d.org/wiki/Thread:getError
---@alias love.thread.Thread.getError
---| fun(): string

--- https://love2d.org/wiki/Thread:getKeys
---@alias love.thread.Thread.getKeys
---| fun(): table

--- https://love2d.org/wiki/Thread:getName
---@alias love.thread.Thread.getName
---| fun(): string

--- https://love2d.org/wiki/Thread:isRunning
---@alias love.thread.Thread.isRunning
---| fun(): boolean

--- https://love2d.org/wiki/Thread:kill
---@alias love.thread.Thread.kill
---| fun(): nil

--- https://love2d.org/wiki/Thread:peek
---@alias love.thread.Thread.peek
---| fun(name: string|nil): boolean|number|string|table

--- https://love2d.org/wiki/Thread:receive
---@alias love.thread.Thread.receive
---| fun(name: string|nil): love.Variant

--- https://love2d.org/wiki/Thread:send
---@alias love.thread.Thread.send
---| fun(name: string|nil, value: love.Variant|nil): nil

--- https://love2d.org/wiki/Thread:set
---@alias love.thread.Thread.set
---| fun(name: string|nil, table: boolean|string|number|nil): nil

--- https://love2d.org/wiki/Thread:start
---@alias love.thread.Thread.start
---| fun(): nil
---| fun(arg1: love.Variant|nil, arg2: love.Variant|nil, ...: love.Variant|nil): nil

--- https://love2d.org/wiki/Thread:wait
---@alias love.thread.Thread.wait
---| fun(): nil

--- https://love2d.org/wiki/VideoStream:getFilename
---@alias love.video.VideoStream.getFilename
---| fun(): string

--- https://love2d.org/wiki/VideoStream:isPlaying
---@alias love.video.VideoStream.isPlaying
---| fun(): boolean

--- https://love2d.org/wiki/VideoStream:pause
---@alias love.video.VideoStream.pause
---| fun(): nil

--- https://love2d.org/wiki/VideoStream:play
---@alias love.video.VideoStream.play
---| fun(): nil

--- https://love2d.org/wiki/VideoStream:rewind
---@alias love.video.VideoStream.rewind
---| fun(): nil

--- https://love2d.org/wiki/VideoStream:seek
---@alias love.video.VideoStream.seek
---| fun(offset: number|nil): nil

--- https://love2d.org/wiki/VideoStream:setSync
---@alias love.video.VideoStream.setSync
---| fun(source: love.audio.Source|nil): nil
---| fun(source: love.video.VideoStream|nil): nil
---| fun(): nil

--- https://love2d.org/wiki/VideoStream:tell
---@alias love.video.VideoStream.tell
---| fun(): number

--- https://love2d.org/wiki/ChainShape:getChildEdge
---@alias love.ChainShape.getChildEdge
---| fun(index: number|nil): love.EdgeShape

--- https://love2d.org/wiki/ChainShape:getNextVertex
---@alias love.ChainShape.getNextVertex
---| fun(): number, number

--- https://love2d.org/wiki/ChainShape:getPoint
---@alias love.ChainShape.getPoint
---| fun(index: number|nil): number, number

--- https://love2d.org/wiki/ChainShape:getPoints
---@alias love.ChainShape.getPoints
---| fun(): number, number, number, number

--- https://love2d.org/wiki/ChainShape:getPreviousVertex
---@alias love.ChainShape.getPreviousVertex
---| fun(): number, number

--- https://love2d.org/wiki/ChainShape:getVertexCount
---@alias love.ChainShape.getVertexCount
---| fun(): number

--- https://love2d.org/wiki/ChainShape:setNextVertex
---@alias love.ChainShape.setNextVertex
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/ChainShape:setPrevVertex
---@alias love.ChainShape.setPrevVertex
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/ChainShape:setPreviousVertex
---@alias love.ChainShape.setPreviousVertex
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/CircleShape:getLocalCenter
---@alias love.CircleShape.getLocalCenter
---| fun(): number, number

--- https://love2d.org/wiki/CircleShape:getPoint
---@alias love.CircleShape.getPoint
---| fun(): number, number

--- https://love2d.org/wiki/CircleShape:getRadius
---@alias love.CircleShape.getRadius
---| fun(): number

--- https://love2d.org/wiki/CircleShape:getWorldCenter
---@alias love.CircleShape.getWorldCenter
---| fun(): number, number

--- https://love2d.org/wiki/CircleShape:setPoint
---@alias love.CircleShape.setPoint
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/CircleShape:setRadius
---@alias love.CircleShape.setRadius
---| fun(radius: number|nil): nil

--- https://love2d.org/wiki/DistanceJoint:getDamping
---@alias love.DistanceJoint.getDamping
---| fun(): number

--- https://love2d.org/wiki/DistanceJoint:getDampingRatio
---@alias love.DistanceJoint.getDampingRatio
---| fun(): number

--- https://love2d.org/wiki/DistanceJoint:getFrequency
---@alias love.DistanceJoint.getFrequency
---| fun(): number

--- https://love2d.org/wiki/DistanceJoint:getLength
---@alias love.DistanceJoint.getLength
---| fun(): number

--- https://love2d.org/wiki/DistanceJoint:setDamping
---@alias love.DistanceJoint.setDamping
---| fun(ratio: number|nil): nil

--- https://love2d.org/wiki/DistanceJoint:setDampingRatio
---@alias love.DistanceJoint.setDampingRatio
---| fun(ratio: number|nil): nil

--- https://love2d.org/wiki/DistanceJoint:setFrequency
---@alias love.DistanceJoint.setFrequency
---| fun(Hz: number|nil): nil

--- https://love2d.org/wiki/DistanceJoint:setLength
---@alias love.DistanceJoint.setLength
---| fun(l: number|nil): nil

--- https://love2d.org/wiki/EdgeShape:getNextVertex
---@alias love.EdgeShape.getNextVertex
---| fun(): number, number

--- https://love2d.org/wiki/EdgeShape:getPoints
---@alias love.EdgeShape.getPoints
---| fun(): number, number, number, number

--- https://love2d.org/wiki/EdgeShape:getPreviousVertex
---@alias love.EdgeShape.getPreviousVertex
---| fun(): number, number

--- https://love2d.org/wiki/EdgeShape:setNextVertex
---@alias love.EdgeShape.setNextVertex
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/EdgeShape:setPreviousVertex
---@alias love.EdgeShape.setPreviousVertex
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/FrictionJoint:getMaxForce
---@alias love.FrictionJoint.getMaxForce
---| fun(): number

--- https://love2d.org/wiki/FrictionJoint:getMaxTorque
---@alias love.FrictionJoint.getMaxTorque
---| fun(): number

--- https://love2d.org/wiki/FrictionJoint:setMaxForce
---@alias love.FrictionJoint.setMaxForce
---| fun(maxForce: number|nil): nil

--- https://love2d.org/wiki/FrictionJoint:setMaxTorque
---@alias love.FrictionJoint.setMaxTorque
---| fun(torque: number|nil): nil

--- https://love2d.org/wiki/GearJoint:getJoints
---@alias love.GearJoint.getJoints
---| fun(): love.physics.Joint, love.physics.Joint

--- https://love2d.org/wiki/GearJoint:getRatio
---@alias love.GearJoint.getRatio
---| fun(): number

--- https://love2d.org/wiki/GearJoint:setRatio
---@alias love.GearJoint.setRatio
---| fun(ratio: number|nil): nil

--- https://love2d.org/wiki/MotorJoint:getAngularOffset
---@alias love.MotorJoint.getAngularOffset
---| fun(): number

--- https://love2d.org/wiki/MotorJoint:getLinearOffset
---@alias love.MotorJoint.getLinearOffset
---| fun(): number, number

--- https://love2d.org/wiki/MotorJoint:setAngularOffset
---@alias love.MotorJoint.setAngularOffset
---| fun(angleoffset: number|nil): nil

--- https://love2d.org/wiki/MotorJoint:setLinearOffset
---@alias love.MotorJoint.setLinearOffset
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/MouseJoint:getDampingRatio
---@alias love.MouseJoint.getDampingRatio
---| fun(): number

--- https://love2d.org/wiki/MouseJoint:getFrequency
---@alias love.MouseJoint.getFrequency
---| fun(): number

--- https://love2d.org/wiki/MouseJoint:getMaxForce
---@alias love.MouseJoint.getMaxForce
---| fun(): number

--- https://love2d.org/wiki/MouseJoint:getTarget
---@alias love.MouseJoint.getTarget
---| fun(): number, number

--- https://love2d.org/wiki/MouseJoint:setDampingRatio
---@alias love.MouseJoint.setDampingRatio
---| fun(ratio: number|nil): nil

--- https://love2d.org/wiki/MouseJoint:setFrequency
---@alias love.MouseJoint.setFrequency
---| fun(freq: number|nil): nil

--- https://love2d.org/wiki/MouseJoint:setMaxForce
---@alias love.MouseJoint.setMaxForce
---| fun(f: number|nil): nil

--- https://love2d.org/wiki/MouseJoint:setTarget
---@alias love.MouseJoint.setTarget
---| fun(x: number|nil, y: number|nil): nil

--- https://love2d.org/wiki/PolygonShape:getPoints
---@alias love.PolygonShape.getPoints
---| fun(): number, number, number, number

--- https://love2d.org/wiki/PolygonShape:validate
---@alias love.PolygonShape.validate
---| fun(): boolean

--- https://love2d.org/wiki/PrismaticJoint:areLimitsEnabled
---@alias love.PrismaticJoint.areLimitsEnabled
---| fun(): boolean

--- https://love2d.org/wiki/PrismaticJoint:enableLimit
---@alias love.PrismaticJoint.enableLimit
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/PrismaticJoint:enableMotor
---@alias love.PrismaticJoint.enableMotor
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/PrismaticJoint:getAxis
---@alias love.PrismaticJoint.getAxis
---| fun(): number, number

--- https://love2d.org/wiki/PrismaticJoint:getJointSpeed
---@alias love.PrismaticJoint.getJointSpeed
---| fun(): number

--- https://love2d.org/wiki/PrismaticJoint:getJointTranslation
---@alias love.PrismaticJoint.getJointTranslation
---| fun(): number

--- https://love2d.org/wiki/PrismaticJoint:getLimits
---@alias love.PrismaticJoint.getLimits
---| fun(): number, number

--- https://love2d.org/wiki/PrismaticJoint:getLowerLimit
---@alias love.PrismaticJoint.getLowerLimit
---| fun(): number

--- https://love2d.org/wiki/PrismaticJoint:getMaxMotorForce
---@alias love.PrismaticJoint.getMaxMotorForce
---| fun(): number

--- https://love2d.org/wiki/PrismaticJoint:getMotorForce
---@alias love.PrismaticJoint.getMotorForce
---| fun(invdt: number|nil): number
---| fun(): number

--- https://love2d.org/wiki/PrismaticJoint:getMotorSpeed
---@alias love.PrismaticJoint.getMotorSpeed
---| fun(): number

--- https://love2d.org/wiki/PrismaticJoint:getReferenceAngle
---@alias love.PrismaticJoint.getReferenceAngle
---| fun(): number

--- https://love2d.org/wiki/PrismaticJoint:getUpperLimit
---@alias love.PrismaticJoint.getUpperLimit
---| fun(): number

--- https://love2d.org/wiki/PrismaticJoint:hasLimitsEnabled
---@alias love.PrismaticJoint.hasLimitsEnabled
---| fun(): boolean

--- https://love2d.org/wiki/PrismaticJoint:isLimitEnabled
---@alias love.PrismaticJoint.isLimitEnabled
---| fun(): boolean

--- https://love2d.org/wiki/PrismaticJoint:isLimitsEnabled
---@alias love.PrismaticJoint.isLimitsEnabled
---| fun(): boolean

--- https://love2d.org/wiki/PrismaticJoint:isMotorEnabled
---@alias love.PrismaticJoint.isMotorEnabled
---| fun(): boolean

--- https://love2d.org/wiki/PrismaticJoint:setLimits
---@alias love.PrismaticJoint.setLimits
---| fun(lower: number|nil, upper: number|nil): nil

--- https://love2d.org/wiki/PrismaticJoint:setLimitsEnabled
---@alias love.PrismaticJoint.setLimitsEnabled
---| fun(): boolean

--- https://love2d.org/wiki/PrismaticJoint:setLowerLimit
---@alias love.PrismaticJoint.setLowerLimit
---| fun(lower: number|nil): nil

--- https://love2d.org/wiki/PrismaticJoint:setMaxMotorForce
---@alias love.PrismaticJoint.setMaxMotorForce
---| fun(f: number|nil): nil

--- https://love2d.org/wiki/PrismaticJoint:setMotorEnabled
---@alias love.PrismaticJoint.setMotorEnabled
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/PrismaticJoint:setMotorSpeed
---@alias love.PrismaticJoint.setMotorSpeed
---| fun(s: number|nil): nil

--- https://love2d.org/wiki/PrismaticJoint:setUpperLimit
---@alias love.PrismaticJoint.setUpperLimit
---| fun(upper: number|nil): nil

--- https://love2d.org/wiki/PulleyJoint:getConstant
---@alias love.PulleyJoint.getConstant
---| fun(): number

--- https://love2d.org/wiki/PulleyJoint:getGroundAnchors
---@alias love.PulleyJoint.getGroundAnchors
---| fun(): number, number, number, number

--- https://love2d.org/wiki/PulleyJoint:getLength1
---@alias love.PulleyJoint.getLength1
---| fun(): number

--- https://love2d.org/wiki/PulleyJoint:getLength2
---@alias love.PulleyJoint.getLength2
---| fun(): number

--- https://love2d.org/wiki/PulleyJoint:getLengthA
---@alias love.PulleyJoint.getLengthA
---| fun(): number

--- https://love2d.org/wiki/PulleyJoint:getLengthB
---@alias love.PulleyJoint.getLengthB
---| fun(): number

--- https://love2d.org/wiki/PulleyJoint:getMaxLengths
---@alias love.PulleyJoint.getMaxLengths
---| fun(): number, number

--- https://love2d.org/wiki/PulleyJoint:getRatio
---@alias love.PulleyJoint.getRatio
---| fun(): number

--- https://love2d.org/wiki/PulleyJoint:setConstant
---@alias love.PulleyJoint.setConstant
---| fun(length: number|nil): nil

--- https://love2d.org/wiki/PulleyJoint:setMaxLengths
---@alias love.PulleyJoint.setMaxLengths
---| fun(max1: number|nil, max2: number|nil): nil

--- https://love2d.org/wiki/PulleyJoint:setRatio
---@alias love.PulleyJoint.setRatio
---| fun(ratio: number|nil): nil

--- https://love2d.org/wiki/RevoluteJoint:areLimitsEnabled
---@alias love.RevoluteJoint.areLimitsEnabled
---| fun(): boolean

--- https://love2d.org/wiki/RevoluteJoint:enableLimit
---@alias love.RevoluteJoint.enableLimit
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/RevoluteJoint:enableMotor
---@alias love.RevoluteJoint.enableMotor
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/RevoluteJoint:getJointAngle
---@alias love.RevoluteJoint.getJointAngle
---| fun(): number

--- https://love2d.org/wiki/RevoluteJoint:getJointSpeed
---@alias love.RevoluteJoint.getJointSpeed
---| fun(): number

--- https://love2d.org/wiki/RevoluteJoint:getLimits
---@alias love.RevoluteJoint.getLimits
---| fun(): number, number

--- https://love2d.org/wiki/RevoluteJoint:getLowerLimit
---@alias love.RevoluteJoint.getLowerLimit
---| fun(): number

--- https://love2d.org/wiki/RevoluteJoint:getMaxMotorTorque
---@alias love.RevoluteJoint.getMaxMotorTorque
---| fun(): number

--- https://love2d.org/wiki/RevoluteJoint:getMotorSpeed
---@alias love.RevoluteJoint.getMotorSpeed
---| fun(): number

--- https://love2d.org/wiki/RevoluteJoint:getMotorTorque
---@alias love.RevoluteJoint.getMotorTorque
---| fun(invdt: number|nil): number

--- https://love2d.org/wiki/RevoluteJoint:getReferenceAngle
---@alias love.RevoluteJoint.getReferenceAngle
---| fun(): number

--- https://love2d.org/wiki/RevoluteJoint:getUpperLimit
---@alias love.RevoluteJoint.getUpperLimit
---| fun(): number

--- https://love2d.org/wiki/RevoluteJoint:hasLimitsEnabled
---@alias love.RevoluteJoint.hasLimitsEnabled
---| fun(): boolean

--- https://love2d.org/wiki/RevoluteJoint:isLimitsEnabled
---@alias love.RevoluteJoint.isLimitsEnabled
---| fun(): boolean

--- https://love2d.org/wiki/RevoluteJoint:isMotorEnabled
---@alias love.RevoluteJoint.isMotorEnabled
---| fun(): boolean

--- https://love2d.org/wiki/RevoluteJoint:setLimits
---@alias love.RevoluteJoint.setLimits
---| fun(lower: number|nil, upper: number|nil): nil

--- https://love2d.org/wiki/RevoluteJoint:setLimitsEnabled
---@alias love.RevoluteJoint.setLimitsEnabled
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/RevoluteJoint:setLowerLimit
---@alias love.RevoluteJoint.setLowerLimit
---| fun(lower: number|nil): nil

--- https://love2d.org/wiki/RevoluteJoint:setMaxMotorTorque
---@alias love.RevoluteJoint.setMaxMotorTorque
---| fun(f: number|nil): nil

--- https://love2d.org/wiki/RevoluteJoint:setMotorEnabled
---@alias love.RevoluteJoint.setMotorEnabled
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/RevoluteJoint:setMotorSpeed
---@alias love.RevoluteJoint.setMotorSpeed
---| fun(s: number|nil): nil

--- https://love2d.org/wiki/RopeJoint:getMaxLength
---@alias love.RopeJoint.getMaxLength
---| fun(): number

--- https://love2d.org/wiki/RopeJoint:setMaxLength
---@alias love.RopeJoint.setMaxLength
---| fun(maxLength: number|nil): nil

--- https://love2d.org/wiki/WeldJoint:getDampingRatio
---@alias love.WeldJoint.getDampingRatio
---| fun(): number

--- https://love2d.org/wiki/WeldJoint:getFrequency
---@alias love.WeldJoint.getFrequency
---| fun(): number

--- https://love2d.org/wiki/WeldJoint:getReferenceAngle
---@alias love.WeldJoint.getReferenceAngle
---| fun(): number

--- https://love2d.org/wiki/WeldJoint:setDampingRatio
---@alias love.WeldJoint.setDampingRatio
---| fun(ratio: number|nil): nil

--- https://love2d.org/wiki/WeldJoint:setFrequency
---@alias love.WeldJoint.setFrequency
---| fun(freq: number|nil): nil

--- https://love2d.org/wiki/WheelJoint:enableMotor
---@alias love.WheelJoint.enableMotor
---| fun(on: boolean|nil): nil

--- https://love2d.org/wiki/WheelJoint:getAxis
---@alias love.WheelJoint.getAxis
---| fun(): number, number

--- https://love2d.org/wiki/WheelJoint:getJointSpeed
---@alias love.WheelJoint.getJointSpeed
---| fun(): number

--- https://love2d.org/wiki/WheelJoint:getJointTranslation
---@alias love.WheelJoint.getJointTranslation
---| fun(): number

--- https://love2d.org/wiki/WheelJoint:getMaxMotorTorque
---@alias love.WheelJoint.getMaxMotorTorque
---| fun(): number

--- https://love2d.org/wiki/WheelJoint:getMotorSpeed
---@alias love.WheelJoint.getMotorSpeed
---| fun(): number

--- https://love2d.org/wiki/WheelJoint:getMotorTorque
---@alias love.WheelJoint.getMotorTorque
---| fun(invdt: number|nil): number

--- https://love2d.org/wiki/WheelJoint:getSpringDampingRatio
---@alias love.WheelJoint.getSpringDampingRatio
---| fun(): number

--- https://love2d.org/wiki/WheelJoint:getSpringFrequency
---@alias love.WheelJoint.getSpringFrequency
---| fun(): number

--- https://love2d.org/wiki/WheelJoint:isMotorEnabled
---@alias love.WheelJoint.isMotorEnabled
---| fun(): boolean

--- https://love2d.org/wiki/WheelJoint:setMaxMotorTorque
---@alias love.WheelJoint.setMaxMotorTorque
---| fun(maxTorque: number|nil): nil

--- https://love2d.org/wiki/WheelJoint:setMotorEnabled
---@alias love.WheelJoint.setMotorEnabled
---| fun(enable: boolean|nil): nil

--- https://love2d.org/wiki/WheelJoint:setMotorSpeed
---@alias love.WheelJoint.setMotorSpeed
---| fun(speed: number|nil): nil

--- https://love2d.org/wiki/WheelJoint:setSpringDampingRatio
---@alias love.WheelJoint.setSpringDampingRatio
---| fun(ratio: number|nil): nil

--- https://love2d.org/wiki/WheelJoint:setSpringFrequency
---@alias love.WheelJoint.setSpringFrequency
---| fun(freq: number|nil): nil

-----------
-- ENUMS --
-----------

--- https://love2d.org/wiki/DistanceModel
---@alias love.audio.DistanceModel
---| "none"
---| "inverse"
---| "inverseclamped"
---| "linear"
---| "linearclamped"
---| "exponent"
---| "exponentclamped"

--- https://love2d.org/wiki/EffectType
---@alias love.audio.EffectType
---| "chorus"
---| "compressor"
---| "distortion"
---| "echo"
---| "equalizer"
---| "flanger"
---| "reverb"
---| "ringmodulator"

--- https://love2d.org/wiki/EffectWaveform
---@alias love.audio.EffectWaveform
---| "sawtooth"
---| "sine"
---| "square"
---| "triangle"

--- https://love2d.org/wiki/SourceType
---@alias love.audio.SourceType
---| "static"
---| "stream"
---| "queue"

--- https://love2d.org/wiki/TimeUnit
---@alias love.audio.TimeUnit
---| "seconds"
---| "samples"

--- https://love2d.org/wiki/CompressedDataFormat
---@alias love.data.CompressedDataFormat
---| "lz4"
---| "zlib"
---| "gzip"
---| "deflate"

--- https://love2d.org/wiki/ContainerType
---@alias love.data.ContainerType
---| "data"
---| "string"

--- https://love2d.org/wiki/EncodeFormat
---@alias love.data.EncodeFormat
---| "base64"
---| "hex"

--- https://love2d.org/wiki/HashFunction
---@alias love.data.HashFunction
---| "md5"
---| "sha1"
---| "sha224"
---| "sha256"
---| "sha384"
---| "sha512"

--- https://love2d.org/wiki/Event
---@alias love.event.Event
---| "focus"
---| "joystickpressed"
---| "joystickreleased"
---| "keypressed"
---| "keyreleased"
---| "mousepressed"
---| "mousereleased"
---| "quit"
---| "resize"
---| "visible"
---| "mousefocus"
---| "threaderror"
---| "joystickadded"
---| "joystickremoved"
---| "joystickaxis"
---| "joystickhat"
---| "gamepadpressed"
---| "gamepadreleased"
---| "gamepadaxis"
---| "textinput"
---| "mousemoved"
---| "lowmemory"
---| "textedited"
---| "wheelmoved"
---| "touchpressed"
---| "touchreleased"
---| "touchmoved"
---| "directorydropped"
---| "filedropped"
---| "jp"
---| "jr"
---| "kp"
---| "kr"
---| "mp"
---| "mr"
---| "q"
---| "f"

--- https://love2d.org/wiki/FileDecoder
---@alias love.filesystem.FileDecoder
---| "file"
---| "base64"

--- https://love2d.org/wiki/FileMode
---@alias love.filesystem.FileMode
---| "r"
---| "w"
---| "a"
---| "c"

--- https://love2d.org/wiki/FileType
---@alias love.filesystem.FileType
---| "file"
---| "directory"
---| "symlink"
---| "other"

--- https://love2d.org/wiki/HintingMode
---@alias love.font.HintingMode
---| "normal"
---| "light"
---| "mono"
---| "none"

--- https://love2d.org/wiki/PixelFormat
---@alias love.font.PixelFormat
---| "normal"
---| "r8"
---| "rg8"
---| "rgba8"
---| "srgba8"
---| "r16"
---| "rg16"
---| "rgba16"
---| "r16f"
---| "rg16f"
---| "rgba16f"
---| "r32f"
---| "rg32f"
---| "rgba32f"
---| "la8"
---| "rgba4"
---| "rgb5a1"
---| "rgb565"
---| "rgb10a2"
---| "rg11b10f"
---| "stencil8"
---| "depth16"
---| "depth24"
---| "depth32f"
---| "depth24stencil8"
---| "depth32fstencil8"
---| "DXT1"
---| "DXT3"
---| "DXT5"
---| "BC4"
---| "BC4s"
---| "BC5"
---| "BC5s"
---| "BC6h"
---| "BC6hs"
---| "BC7"
---| "ETC1"
---| "ETC2rgb"
---| "ETC2rgba"
---| "ETC2rgba1"
---| "EACr"
---| "EACrs"
---| "EACrg"
---| "EACrgs"
---| "PVR1rgb2"
---| "PVR1rgb4"
---| "PVR1rgba2"
---| "PVR1rgba4"
---| "ASTC4x4"
---| "ASTC5x4"
---| "ASTC5x5"
---| "ASTC6x5"
---| "ASTC6x6"
---| "ASTC8x5"
---| "ASTC8x6"
---| "ASTC8x8"
---| "ASTC10x5"
---| "ASTC10x6"
---| "ASTC10x8"
---| "ASTC10x10"
---| "ASTC12x10"
---| "ASTC12x12"

--- https://love2d.org/wiki/AlignMode
---@alias love.graphics.AlignMode
---| "center"
---| "left"
---| "right"
---| "justify"

--- https://love2d.org/wiki/ArcType
---@alias love.graphics.ArcType
---| "pie"
---| "open"
---| "closed"

--- https://love2d.org/wiki/AttributeDataType
---@alias love.graphics.AttributeDataType
---| "byte"
---| "unorm16"
---| "float"

--- https://love2d.org/wiki/BlendAlphaMode
---@alias love.graphics.BlendAlphaMode
---| "alphamultiply"
---| "premultiplied"

--- https://love2d.org/wiki/BlendMode
---@alias love.graphics.BlendMode
---| "alpha"
---| "replace"
---| "screen"
---| "add"
---| "subtract"
---| "multiply"
---| "lighten"
---| "darken"
---| "additive"
---| "subtractive"
---| "multiplicative"
---| "premultiplied"

--- https://love2d.org/wiki/BufferDataUsage
---@alias love.graphics.BufferDataUsage
---| "dynamic"
---| "static"
---| "stream"

--- https://love2d.org/wiki/CanvasFormat
---@alias love.graphics.CanvasFormat
---| "normal"
---| "hdr"
---| "rgba8"
---| "rgba4"
---| "rgb5a1"
---| "rgb565"
---| "rgb10a2"
---| "rgba16f"
---| "rgba32f"
---| "rg11b10f"
---| "srgb"
---| "r8"
---| "rg8"
---| "r16f"
---| "rg16f"
---| "r32f"
---| "rg32f"

--- https://love2d.org/wiki/ColorMode
---@alias love.graphics.ColorMode
---| "modulate"
---| "replace"
---| "combine (since 0.8.0)"

--- https://love2d.org/wiki/CompareMode
---@alias love.graphics.CompareMode
---| "equal"
---| "notequal"
---| "less"
---| "lequal"
---| "gequal"
---| "greater"
---| "never"
---| "always"

--- https://love2d.org/wiki/CullMode
---@alias love.graphics.CullMode
---| "back"
---| "front"
---| "none"

--- https://love2d.org/wiki/DrawMode
---@alias love.graphics.DrawMode
---| "fill"
---| "line"

--- https://love2d.org/wiki/FilterMode
---@alias love.graphics.FilterMode
---| "linear"
---| "nearest"

--- https://love2d.org/wiki/GraphicsFeature
---@alias love.graphics.GraphicsFeature
---| "clampzero"
---| "lighten"
---| "multicanvasformats"
---| "glsl3"
---| "instancing"
---| "fullnpot"
---| "pixelshaderhighp"
---| "shaderderivatives"
---| "canvas"
---| "npot"
---| "subtractive"
---| "shader"
---| "hdrcanvas"
---| "multicanvas"
---| "mipmap"
---| "dxt"
---| "bc5"
---| "srgb"
---| "pixeleffect"

--- https://love2d.org/wiki/GraphicsLimit
---@alias love.graphics.GraphicsLimit
---| "pointsize"
---| "texturesize"
---| "multicanvas"
---| "canvasmsaa"
---| "texturelayers"
---| "volumetexturesize"
---| "cubetexturesize"
---| "anisotropy"
---| "canvasfsaa"

--- https://love2d.org/wiki/IndexDataType
---@alias love.graphics.IndexDataType
---| "uint16"
---| "uint32"

--- https://love2d.org/wiki/LineJoin
---@alias love.graphics.LineJoin
---| "miter"
---| "none"
---| "bevel"

--- https://love2d.org/wiki/LineStyle
---@alias love.graphics.LineStyle
---| "rough"
---| "smooth"

--- https://love2d.org/wiki/MeshDrawMode
---@alias love.graphics.MeshDrawMode
---| "fan"
---| "strip"
---| "triangles"
---| "points"

--- https://love2d.org/wiki/MipmapMode
---@alias love.graphics.MipmapMode
---| "none"
---| "manual"
---| "auto"

--- https://love2d.org/wiki/PointStyle
---@alias love.graphics.PointStyle
---| "rough"
---| "smooth"

--- https://love2d.org/wiki/StackType
---@alias love.graphics.StackType
---| "transform"
---| "all"

--- https://love2d.org/wiki/StencilAction
---@alias love.graphics.StencilAction
---| "replace"
---| "increment"
---| "decrement"
---| "incrementwrap"
---| "decrementwrap"
---| "invert"

--- https://love2d.org/wiki/TextureFormat
---@alias love.graphics.TextureFormat
---| "normal"
---| "hdr"
---| "srgb"

--- https://love2d.org/wiki/TextureType
---@alias love.graphics.TextureType
---| "2d"
---| "array"
---| "cube"
---| "volume"

--- https://love2d.org/wiki/VertexAttributeStep
---@alias love.graphics.VertexAttributeStep
---| "pervertex"
---| "perinstance"

--- https://love2d.org/wiki/VertexWinding
---@alias love.graphics.VertexWinding
---| "cw"
---| "ccw"

--- https://love2d.org/wiki/WrapMode
---@alias love.graphics.WrapMode
---| "clamp"
---| "repeat"
---| "mirroredrepeat"
---| "clampzero"
---| "clampone"

--- https://love2d.org/wiki/CompressedImageFormat
---@alias love.image.CompressedImageFormat
---| "DXT1"
---| "DXT3"
---| "DXT5"
---| "BC4"
---| "BC4s"
---| "BC5"
---| "BC5s"
---| "BC6h"
---| "BC6hs"
---| "BC7"
---| "ETC1"
---| "ETC2rgb"
---| "ETC2rgba"
---| "ETC2rgba1"
---| "EACr"
---| "EACrs"
---| "EACrg"
---| "EACrgs"
---| "PVR1rgb2"
---| "PVR1rgb4"
---| "PVR1rgba2"
---| "PVR1rgba4"
---| "ASTC4x4"
---| "ASTC5x4"
---| "ASTC5x5"
---| "ASTC6x5"
---| "ASTC6x6"
---| "ASTC8x5"
---| "ASTC8x6"
---| "ASTC8x8"
---| "ASTC10x5"
---| "ASTC10x6"
---| "ASTC10x8"
---| "ASTC10x10"
---| "ASTC12x10"
---| "ASTC12x12"

--- https://love2d.org/wiki/ImageEncodeFormat
---@alias love.image.ImageEncodeFormat
---| "tga"
---| "png"
---| "exr"
---| "jpg"
---| "bmp"

--- https://love2d.org/wiki/GamepadAxis
---@alias love.joystick.GamepadAxis
---| "leftx"
---| "lefty"
---| "rightx"
---| "righty"
---| "triggerleft"
---| "triggerright"

--- https://love2d.org/wiki/GamepadButton
---@alias love.joystick.GamepadButton
---| "a"
---| "b"
---| "x"
---| "y"
---| "back"
---| "guide"
---| "start"
---| "leftstick"
---| "rightstick"
---| "leftshoulder"
---| "rightshoulder"
---| "dpup"
---| "dpdown"
---| "dpleft"
---| "dpright"
---| "misc1"
---| "paddle1"
---| "paddle2"
---| "paddle3"
---| "paddle4"
---| "touchpad"

--- https://love2d.org/wiki/JoystickHat
---@alias love.joystick.JoystickHat
---| "c"
---| "d"
---| "l"
---| "ld"
---| "lu"
---| "r"
---| "rd"
---| "ru"
---| "u"

--- https://love2d.org/wiki/JoystickInputType
---@alias love.joystick.JoystickInputType
---| "axis"
---| "button"
---| "hat"

--- https://love2d.org/wiki/KeyConstant
---@alias love.keyboard.KeyConstant
---| "a"
---| "b"
---| "c"
---| "d"
---| "e"
---| "f"
---| "g"
---| "h"
---| "i"
---| "j"
---| "k"
---| "l"
---| "m"
---| "n"
---| "o"
---| "p"
---| "q"
---| "r"
---| "s"
---| "t"
---| "u"
---| "v"
---| "w"
---| "x"
---| "y"
---| "z"
---| "0"
---| "1"
---| "2"
---| "3"
---| "4"
---| "5"
---| "6"
---| "7"
---| "8"
---| "9"
---| "space"
---| "!"
---| """
---| "#"
---| "$"
---| "&"
---| "'"
---| "("
---| ")"
---| "*"
---| "+"
---| ","
---| "-"
---| "."
---| "/"
---| ":"
---| ";"
---| "<"
---| "="
---| ">"
---| "?"
---| "@"
---| "["
---| "\"
---| "]"
---| "^"
---| "_"
---| "`"
---| "kp0"
---| "kp1"
---| "kp2"
---| "kp3"
---| "kp4"
---| "kp5"
---| "kp6"
---| "kp7"
---| "kp8"
---| "kp9"
---| "kp."
---| "kp,"
---| "kp/"
---| "kp*"
---| "kp-"
---| "kp+"
---| "kpenter"
---| "kp="
---| "up"
---| "down"
---| "right"
---| "left"
---| "home"
---| "end"
---| "pageup"
---| "pagedown"
---| "insert"
---| "backspace"
---| "tab"
---| "clear"
---| "return"
---| "delete"
---| "f1"
---| "f2"
---| "f3"
---| "f4"
---| "f5"
---| "f6"
---| "f7"
---| "f8"
---| "f9"
---| "f10"
---| "f11"
---| "f12"
---| "f13"
---| "f14"
---| "f15"
---| "f16"
---| "f17"
---| "f18"
---| "numlock"
---| "capslock"
---| "scrolllock"
---| "rshift"
---| "lshift"
---| "rctrl"
---| "lctrl"
---| "ralt"
---| "lalt"
---| "rgui"
---| "lgui"
---| "mode"
---| "www"
---| "mail"
---| "calculator"
---| "computer"
---| "appsearch"
---| "apphome"
---| "appback"
---| "appforward"
---| "apprefresh"
---| "appbookmarks"
---| "pause"
---| "escape"
---| "help"
---| "printscreen"
---| "sysreq"
---| "menu"
---| "application"
---| "power"
---| "currencyunit"
---| "undo"

--- https://love2d.org/wiki/Scancode
---@alias love.keyboard.Scancode
---| "a"
---| "b"
---| "c"
---| "d"
---| "e"
---| "f"
---| "g"
---| "h"
---| "i"
---| "j"
---| "k"
---| "l"
---| "m"
---| "n"
---| "o"
---| "p"
---| "q"
---| "r"
---| "s"
---| "t"
---| "u"
---| "v"
---| "w"
---| "x"
---| "y"
---| "z"
---| "1"
---| "2"
---| "3"
---| "4"
---| "5"
---| "6"
---| "7"
---| "8"
---| "9"
---| "0"
---| "return"
---| "escape"
---| "backspace"
---| "tab"
---| "space"
---| "-"
---| "="
---| "["
---| "]"
---| "\"
---| "nonus#"
---| " ;"
---| "'"
---| "`"
---| ","
---| "."
---| "/"
---| "capslock"
---| "f1"
---| "f2"
---| "f3"
---| "f4"
---| "f5"
---| "f6"
---| "f7"
---| "f8"
---| "f9"
---| "f10"
---| "f11"
---| "f12"
---| "f13"
---| "f14"
---| "f15"
---| "f16"
---| "f17"
---| "f18"
---| "f19"
---| "f20"
---| "f21"
---| "f22"
---| "f23"
---| "f24"
---| "lctrl"
---| "lshift"
---| "lalt"
---| "lgui"
---| "rctrl"
---| "rshift"
---| "ralt"
---| "rgui"
---| "printscreen"
---| "scrolllock"
---| "pause"
---| "insert"
---| "home"
---| "numlock"
---| "pageup"
---| "delete"
---| "end"
---| "pagedown"
---| "right"
---| "left"
---| "down"
---| "up"
---| "nonusbackslash"
---| "application"
---| "execute"
---| "help"
---| "menu"
---| "select"
---| "stop"
---| "again"
---| "undo"
---| "cut"
---| "copy"
---| "paste"
---| "find"
---| "kp/"
---| "kp*"
---| "kp-"
---| "kp+"
---| "kp="
---| "kpenter"
---| "kp1"
---| "kp2"
---| "kp3"
---| "kp4"
---| "kp5"
---| "kp6"
---| "kp7"
---| "kp8"
---| "kp9"
---| "kp0"
---| "kp."
---| "international1"
---| "international2"
---| "international3"
---| "international4"
---| "international5"
---| "international6"
---| "international7"
---| "international8"
---| "international9"
---| "lang1"
---| "lang2"
---| "lang3"
---| "lang4"
---| "lang5"
---| "mute"
---| "volumeup"
---| "volumedown"
---| "audionext"
---| "audioprev"
---| "audiostop"
---| "audioplay"
---| "audiomute"
---| "mediaselect"
---| "www"
---| "mail"
---| "calculator"
---| "computer"
---| "acsearch"
---| "achome"
---| "acback"
---| "acforward"
---| "acstop"
---| "acrefresh"
---| "acbookmarks"
---| "power"
---| "brightnessdown"
---| "brightnessup"
---| "displayswitch"
---| "kbdillumtoggle"
---| "kbdillumdown"
---| "kbdillumup"
---| "eject"
---| "sleep"
---| "alterase"
---| "sysreq"
---| "cancel"
---| "clear"
---| "prior"
---| "return2"
---| "separator"
---| "out"
---| "oper"
---| "clearagain"
---| "crsel"
---| "exsel"
---| "kp00"
---| "kp000"
---| "thsousandsseparator"
---| "decimalseparator"
---| "currencyunit"
---| "currencysubunit"
---| "app1"
---| "app2"
---| "unknown"

--- https://love2d.org/wiki/CursorType
---@alias love.mouse.CursorType
---| "image"
---| "arrow"
---| "ibeam"
---| "wait"
---| "waitarrow"
---| "crosshair"
---| "sizenwse"
---| "sizenesw"
---| "sizewe"
---| "sizens"
---| "sizeall"
---| "no"
---| "hand"

--- https://love2d.org/wiki/MouseConstant
---@alias love.mouse.MouseConstant
---| "l"
---| "m"
---| "r"
---| "wd"
---| "wu"
---| "x1"
---| "x2"

--- https://love2d.org/wiki/BodyType
---@alias love.physics.BodyType
---| "static"
---| "dynamic"
---| "kinematic"

--- https://love2d.org/wiki/JointType
---@alias love.physics.JointType
---| "distance"
---| "friction"
---| "gear"
---| "mouse"
---| "prismatic"
---| "pulley"
---| "revolute"
---| "rope"
---| "weld"

--- https://love2d.org/wiki/ShapeType
---@alias love.physics.ShapeType
---| "circle"
---| "polygon"
---| "edge"
---| "chain"

--- https://love2d.org/wiki/PowerState
---@alias love.system.PowerState
---| "unknown"
---| "battery"
---| "nobattery"
---| "charging"
---| "charged"

--- https://love2d.org/wiki/DisplayOrientation
---@alias love.window.DisplayOrientation
---| "unknown"
---| "landscape"
---| "landscapeflipped"
---| "portrait"
---| "portraitflipped"

--- https://love2d.org/wiki/FullscreenType
---@alias love.window.FullscreenType
---| "desktop"
---| "exclusive"
---| "normal"

--- https://love2d.org/wiki/MessageBoxType
---@alias love.window.MessageBoxType
---| "info"
---| "warning"
---| "error"

--- https://love2d.org/wiki/FilterType
---@alias love.audio.FilterType
---| "lowpass"
---| "highpass"
---| "bandpass"

--- https://love2d.org/wiki/BufferMode
---@alias love.filesystem.BufferMode
---| "none"
---| "line"
---| "full"

--- https://love2d.org/wiki/AreaSpreadDistribution
---@alias love.graphics.AreaSpreadDistribution
---| "uniform"
---| "normal"
---| "ellipse"
---| "borderellipse"
---| "borderrectangle"
---| "none"

--- https://love2d.org/wiki/ParticleInsertMode
---@alias love.graphics.ParticleInsertMode
---| "top"
---| "bottom"
---| "random"

--- https://love2d.org/wiki/MatrixLayout
---@alias love.math.MatrixLayout
---| "row"
---| "column"

---------------
-- CALLBACKS --
---------------

---CALLBACK
--- https://love2d.org/wiki/love.draw
---@alias love.draw
---| fun(): nil

---CALLBACK
--- https://love2d.org/wiki/love.errhand
---@alias love.errhand
---| fun(msg: string|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.errorhandler
---@alias love.errorhandler
---| fun(msg: string|nil): function

---CALLBACK
--- https://love2d.org/wiki/love.load
---@alias love.load
---| fun(arg: table|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.lowmemory
---@alias love.lowmemory
---| fun(): nil

---CALLBACK
--- https://love2d.org/wiki/love.quit
---@alias love.quit
---| fun(): boolean

---CALLBACK
--- https://love2d.org/wiki/love.run
---@alias love.run
---| fun(): function
---| fun(): nil

---CALLBACK
--- https://love2d.org/wiki/love.threaderror
---@alias love.threaderror
---| fun(thread: love.thread.Thread|nil, errorstr: string|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.update
---@alias love.update
---| fun(dt: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.directorydropped
---@alias love.directorydropped
---| fun(path: string|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.displayrotated
---@alias love.displayrotated
---| fun(index: number|nil, orientation: love.window.DisplayOrientation|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.filedropped
---@alias love.filedropped
---| fun(file: love.filesystem.DroppedFile|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.focus
---@alias love.focus
---| fun(focus: boolean|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.mousefocus
---@alias love.mousefocus
---| fun(focus: boolean|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.resize
---@alias love.resize
---| fun(w: number|nil, h: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.visible
---@alias love.visible
---| fun(visible: boolean|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.keypressed
---@alias love.keypressed
---| fun(key: love.keyboard.KeyConstant|nil, scancode: love.keyboard.Scancode|nil, isrepeat: boolean|nil): nil
---| fun(key: love.keyboard.KeyConstant|nil, isrepeat: boolean|nil): nil
---| fun(key: love.keyboard.KeyConstant|nil, unicode: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.keyreleased
---@alias love.keyreleased
---| fun(key: love.keyboard.KeyConstant|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.textedited
---@alias love.textedited
---| fun(text: string|nil, start: number|nil, length: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.textinput
---@alias love.textinput
---| fun(text: string|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.mousemoved
---@alias love.mousemoved
---| fun(x: number|nil, y: number|nil, dx: number|nil, dy: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.mousepressed
---@alias love.mousepressed
---| fun(x: number|nil, y: number|nil, button: number|nil, istouch: boolean|nil): nil
---| fun(x: number|nil, y: number|nil, button: love.mouse.MouseConstant|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.mousereleased
---@alias love.mousereleased
---| fun(x: number|nil, y: number|nil, button: number|nil, istouch: boolean|nil): nil
---| fun(x: number|nil, y: number|nil, button: love.mouse.MouseConstant|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.wheelmoved
---@alias love.wheelmoved
---| fun(x: number|nil, y: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.gamepadaxis
---@alias love.gamepadaxis
---| fun(joystick: love.joystick.Joystick|nil, axis: love.joystick.GamepadAxis|nil, value: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.gamepadpressed
---@alias love.gamepadpressed
---| fun(joystick: love.joystick.Joystick|nil, button: love.joystick.GamepadButton|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.gamepadreleased
---@alias love.gamepadreleased
---| fun(joystick: love.joystick.Joystick|nil, button: love.joystick.GamepadButton|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.joystickadded
---@alias love.joystickadded
---| fun(joystick: love.joystick.Joystick|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.joystickaxis
---@alias love.joystickaxis
---| fun(joystick: love.joystick.Joystick|nil, axis: number|nil, value: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.joystickhat
---@alias love.joystickhat
---| fun(joystick: love.joystick.Joystick|nil, hat: number|nil, direction: love.joystick.JoystickHat|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.joystickpressed
---@alias love.joystickpressed
---| fun(joystick: love.joystick.Joystick|nil, button: number|nil): nil
---| fun(joystick: number|nil, button: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.joystickreleased
---@alias love.joystickreleased
---| fun(joystick: love.joystick.Joystick|nil, button: number|nil): nil
---| fun(joystick: number|nil, button: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.joystickremoved
---@alias love.joystickremoved
---| fun(joystick: love.joystick.Joystick|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.touchmoved
---@alias love.touchmoved
---| fun(id: light_userdata|nil, x: number|nil, y: number|nil, dx: number|nil, dy: number|nil, pressure: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.touchpressed
---@alias love.touchpressed
---| fun(id: light_userdata|nil, x: number|nil, y: number|nil, dx: number|nil, dy: number|nil, pressure: number|nil): nil

---CALLBACK
--- https://love2d.org/wiki/love.touchreleased
---@alias love.touchreleased
---| fun(id: light_userdata|nil, x: number|nil, y: number|nil, dx: number|nil, dy: number|nil, pressure: number|nil): nil

---@diagnostic disable: lowercase-global
---@type love
love = love
--end
