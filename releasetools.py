import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if " ||" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(" ||", ' || getprop("ro.build.product") == "A0001" || getprop("ro.product.device") == "bacon" || getprop("ro.build.product") == "bacon" || getprop("ro.product.device") == "One" || getprop("ro.build.product") == "One" || getprop("ro.product.device") == "find7op" || getprop("ro.build.product") == "find7op" ||')
            return

def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "/dev/block/platform/msm_sdcc.1/by-name/system" in edify.script[i]:
      edify.script[i] = 'format("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "0", "/system");'
      return

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def InstallImage(img_name, img_file, partition, info):
  common.ZipWriteStr(info.output_zip, img_name, img_file)
  info.script.AppendExtra(('package_extract_file("' + img_name + '", "' + partition + '");'))

def FullOTA_InstallAboot(info):
    img_file = info.input_zip.read("BOOTABLE_IMAGES/emmc_appsboot.mbn")
    info.script.Print("Writing aboot image...")
    InstallImage("emmc_appsboot.mbn", img_file, "/dev/block/platform/msm_sdcc.1/by-name/aboot", info)

def FullOTA_InstallModem(info):
  img_file = info.input_zip.read("BOOTABLE_IMAGES/NON-HLOS.bin")
  info.script.Print("Writing modem image...")
  InstallImage("NON-HLOS.bin", img_file, "/dev/block/platform/msm_sdcc.1/by-name/modem", info)

def FullOTA_InstallSbl1(info):
  img_file = info.input_zip.read("BOOTABLE_IMAGES/sbl1.mbn")
  info.script.Print("Writing sbl1 image...")
  InstallImage("sbl1.mbn", img_file, "/dev/block/platform/msm_sdcc.1/by-name/sbl1", info)

def FullOTA_InstallRpm(info):
  img_file = info.input_zip.read("BOOTABLE_IMAGES/rpm.mbn")
  info.script.Print("Writing rpm image...")
  InstallImage("rpm.mbn", img_file, "/dev/block/platform/msm_sdcc.1/by-name/rpm", info)

def FullOTA_InstallTz(info):
  img_file = info.input_zip.read("BOOTABLE_IMAGES/tz.mbn")
  info.script.Print("Writing tz image...")
  InstallImage("tz.mbn", img_file, "/dev/block/platform/msm_sdcc.1/by-name/tz", info)

def FullOTA_InstallStatic_nvbk(info):
  img_file = info.input_zip.read("BOOTABLE_IMAGES/static_nvbk.bin")
  info.script.Print("Writing static_nvbk image...")
  InstallImage("static_nvbk.bin", img_file, "/dev/block/platform/msm_sdcc.1/by-name/oppostanvbk", info)

def FullOTA_InstallLogo(info):
  img_file = info.input_zip.read("BOOTABLE_IMAGES/logo.bin")
  info.script.Print("Writing logo image...")
  InstallImage("logo.bin", img_file, "/dev/block/platform/msm_sdcc.1/by-name/LOGO", info)

def FullOTA_InstallReserve4(info):
  img_file = info.input_zip.read("BOOTABLE_IMAGES/reserve4.img")
  info.script.Print("Writing reserve4 image...")
  InstallImage("reserve4.img", img_file, "/dev/block/platform/msm_sdcc.1/by-name/reserve4", info)

def FullOTA_InstallEnd(info):
    WritePolicyConfig(info)
    #AddArgsForSetPermission(info)
    AddAssertions(info)
    FullOTA_InstallAboot(info)
    FullOTA_InstallModem(info)
    FullOTA_InstallSbl1(info)
    FullOTA_InstallRpm(info)
    FullOTA_InstallTz(info)
    FullOTA_InstallStatic_nvbk(info)
    FullOTA_InstallLogo(info)
    FullOTA_InstallReserve4(info)
	
def IncrementalOTA_InstallEnd(info):
    #AddArgsForSetPermission(info)
    AddAssertions(info)
