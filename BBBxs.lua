
on = '❌ '
off = ' '

HOME = 1
BYPDONE = 0
CMENU = 0
function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
		local nFindLastIndex = string.find(
			szFullString,
			szSeparator,
			nFindStartIndex
		)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(
				szFullString,
				nFindStartIndex,
				string.len(szFullString)
			)
			break
		end
		nSplitArray[nSplitIndex] = string.sub(
			szFullString,
			nFindStartIndex,
			nFindLastIndex - 1
		)
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)
		nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end
function xgxc(szpy, qmxg)
	for x = 1, #(qmxg) do
		xgpy = szpy + qmxg[x]["offset"]
		xglx = qmxg[x]["type"]
		xgsz = qmxg[x]["value"]
		gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
		xgsl = xgsl + 1
	end
end
function xqmnb(karar)
	gg.clearResults()
	gg.setRanges(karar[1]["memory"])
	gg.searchNumber(karar[3]["value"], karar[3]["type"])
	if gg.getResultCount() == 0 then
		gg.toast(karar[2]["name"] .. "فشل التفعيل")
	else
		gg.refineNumber(karar[3]["value"], karar[3]["type"])
		gg.refineNumber(karar[3]["value"], karar[3]["type"])
		gg.refineNumber(karar[3]["value"], karar[3]["type"])
		if gg.getResultCount() == 0 then
			gg.toast(karar[2]["name"] .. "فشل التفعيل")
		else
			sl = gg.getResults(999999)
			sz = gg.getResultCount()
			xgsl = 0
			if sz > 999999 then
				sz = 999999
			end
			for i = 1, sz do
				pdsz = true
				for v = 4, #(karar) do
					if pdsz == true then
						pysz = {}
						pysz[1] = {}
						pysz[1].address = sl[i].address + karar[v]["offset"]
						pysz[1].flags = karar[v]["type"]
						szpy = gg.getValues(pysz)
						pdpd = karar[v]["lv"] .. ";" .. szpy[1].value
						szpd = split(pdpd, ";")
						tzszpd = szpd[1]
						pyszpd = szpd[2]
						if tzszpd == pyszpd then
							pdjg = true
							pdsz = true
						else
							pdjg = false
							pdsz = false
						end
					end
				end
				if pdjg == true then
					szpy = sl[i].address
					xgxc(szpy, qmxg)
					xgjg = true
				end
			end
			if xgjg == true then
				gg.toast(karar[2]["name"] .. "Modified " .. xgsl .. " Values🔍")
			else
				gg.toast(karar[2]["name"] .. "فشل تفعيل")
			end
		end
	end
end
-- start
function BIT()
BIt = gg.getTargetInfo()["x64"]
if BIt == false then 
CHOME32() 
chack = 0
 else
CHOME64() 
chack = 1 end
iBug = -1
end

--32 menu
function CHOME32()
  BIT32 = gg.alert("➧ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ: ʜɪ ᴜsᴇʀ ᴛʜɪs sᴄʀɪᴘᴛ ɪs ғʀᴇᴇ ʜᴏᴘɪɴɢ ʏᴏᴜ ᴇɴᴊᴏʏ ɪᴛ♥️ \n\n➧ɢᴀᴍᴇ: ᴘᴜʙɢᴍᴏʙɪʟᴇ 🍭\n➧ʙɪᴛ: 32⚙\n➧ᴄʀᴇᴀᴛᴏʀ: باربي✞ ʙɴs( ✘_✘ )↯ 🖤 \n\n®2020 ʙɴs - ᴀʟʟ ʀɪɢʜᴛᴇs ʀᴇsᴇʀᴠᴇᴅ.", "⟬ ﷼  🇮🇶 ⟭", "⟬ 𝐄𝐧 🇺🇸 ⟭")
if BIT32 == nil then
  else
    if BIT32 == 1 then
    if gg.getTargetPackage() == "com.tencent.ig" or gg.getTargetPackage() == "com.rekoo.pubgm" or gg.getTargetPackage() == "com.tencent.tmgp.pubgmhd" or gg.getTargetPackage() == "com.pubg.krmobile" or gg.getTargetPackage() == "com.vng.pubgmobile" then
  else
  gg.alert("تنبيه: لم تقم باختيار اللعبة من القيم قاردين\nلن تعمل معك التفعيلات⚠️")
end
      AR32BIT()
      CMENU = 2
      check = 0
    end
    if BIT32 == 2 then
    if gg.getTargetPackage() == "com.tencent.ig" or gg.getTargetPackage() == "com.rekoo.pubgm" or gg.getTargetPackage() == "com.tencent.tmgp.pubgmhd" or gg.getTargetPackage() == "com.pubg.krmobile" or gg.getTargetPackage() == "com.vng.pubgmobile" then
  else
  gg.alert("ᴘʟᴇᴀsᴇ ʀᴜɴ ᴘᴜʙɢ ᴀɴᴅ ᴛʀʏ ᴀɢᴀɪɴ❗️")
end
      EN32BIT()
      CMENU = 1
      check = 0
    end
    end
 end
    
    

--64 menu
function CHOME64()
  BIT64 = gg.alert("➧ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ: ʜɪ ᴜsᴇʀ ᴛʜɪs sᴄʀɪᴘᴛ ɪs ғʀᴇᴇ ʜᴏᴘɪɴɢ ʏᴏᴜ ᴇɴᴊᴏʏ ɪᴛ🎟\n\n➧ɢᴀᴍᴇ: ᴘᴜʙɢᴍᴏʙɪʟᴇ 🧨\n➧ʙɪᴛ: 64⚙\n➧ᴄʀᴇᴀᴛᴏʀ: باربي✞ ʙɴs( ✘_✘ )↯ ♥️\n\n®2020 ʙɴs - ᴀʟʟ ʀɪɢʜᴛᴇs ʀᴇsᴇʀᴠᴇᴅ.", "⟬ ﷼  🇮🇶 ⟭", "⟬ 𝐄𝐧 🇺🇸 ⟭")
if BIT64 == nil then
  else
    if BIT64 == 1 then
    if gg.getTargetPackage() == "com.tencent.ig" or gg.getTargetPackage() == "com.rekoo.pubgm" or gg.getTargetPackage() == "com.tencent.tmgp.pubgmhd" or gg.getTargetPackage() == "com.pubg.krmobile" or gg.getTargetPackage() == "com.vng.pubgmobile" then
  else
  gg.alert("تنبيه: لم تقم باختيار اللعبة من القيم قاردين\nلن تعمل معك التفعيلات⚠️")
end
      AR64BIT()
      CMENU = 2
      check = 1
    end
    if BIT64 == 2 then
    if gg.getTargetPackage() == "com.tencent.ig" or gg.getTargetPackage() == "com.rekoo.pubgm" or gg.getTargetPackage() == "com.tencent.tmgp.pubgmhd" or gg.getTargetPackage() == "com.pubg.krmobile" or gg.getTargetPackage() == "com.vng.pubgmobile" then
  else
  gg.alert("ᴘʟᴇᴀsᴇ ʀᴜɴ ᴘᴜʙɢ ᴀɴᴅ ᴛʀʏ ᴀɢᴀɪɴ❗️")
end
      EN64BIT()
      CMENU = 1
      check = 1
    end
    end
end
    
    
--64
function EN64BIT()
menu = gg.choice({
"🕛ʙʏᴘᴀss\n ᯓ『 ᴍᴇᴍᴏʀʏ  』",
"📂🎯 ɴᴏ ʀᴇᴄᴏɪʟ\n ᯓ『 ɢᴀᴍᴇ|ʟᴏʙʙʏ 』",
"📁💧ʜᴀᴄᴋs ғᴜɴᴄᴛɪᴏɴ\n ᯓ『 ɢᴀᴍᴇ|ʟᴏʙʙʏ 』",
"📁🔥ʜᴀᴄᴋs ғᴜɴᴄᴛɪᴏɴ\n ᯓ『 ɢᴀᴍᴇ 』",
"📁🍋ᴡʜ+ᴄᴏʟᴏʀ\n ᯓ『 ɢᴀᴍᴇ 』",
"🍺ғʟᴀsʜ2500ᴍ\n ᯓ『 ɢᴀᴍᴇ|ʟᴏʙʙʏ 』"..para,
" ❌❌❌❌⌬ ᴇxɪᴛ🚫🚫🚫🚫"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧ᴍᴀɪɴ ᴍᴇɴᴜᯓ 64 ʙɪᴛ 🍉")
if menu==1 then A()end
if menu==2 then B64E()end
if menu==3 then C64E()end
if menu==4 then D64E()end
if menu==5 then E()end
if menu==6 then bD3()end
if menu==7 then ex()end
iBug = -1
end

function AR64BIT()
menu = gg.choice({
"🕛بايباس\n 『 ذاكرة  』",
"📂🎯 ثبات\n 『 قيم|لوبي 』",
"📁💧قائمة تهكير\n 『 قيم|لوبي 』",
"📁🔥قائمة تهكير\n 『 قيم 』",
"📁🍋وايل هاك\n 『 قيم 』",
"🍺فلاش2500م\n 『 قيم|لوبي 』"..para,
" ❌❌❌❌⌬ خروح🚫🚫🚫🚫"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧قائمه رئيسية نسخة 64 بت🍉")
if menu==1 then A()end
if menu==2 then B64A()end
if menu==3 then C64A()end
if menu==4 then D64A()end
if menu==5 then EE()end
if menu==6 then bD3()end
if menu==7 then ex()end
iBug = -1
end
    
function A()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("135682;144387", gg.TYPE_DWORD)
gg.refineNumber("135682", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("134658;131586", gg.TYPE_DWORD)
gg.refineNumber("134658", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("4096;135682", gg.TYPE_DWORD)
gg.refineNumber("4096", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("157567", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135938", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135170", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135426", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135212", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("134914;262403", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("133378;262403", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("131330;133634", gg.TYPE_DWORD)
gg.refineNumber("131330", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("131842;132098", gg.TYPE_DWORD)
gg.refineNumber("131842", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131331", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("132098", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
end

function B64E()
NO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ ᯓ 64 ʙɪᴛ🖤","⟬ ᴀɴᴛɪ sʜᴇᴀᴋ100% 🔥⟭", "⟬ ʟᴏʙʙʏ50% 💧⟭")
if NO == nil then
  else
  chack = 1
    if NO == 1 then
      NR64()
    end
    if NO == 2 then
      LR64()
    end
    end
  iBug = -1
end
    
   
function B64A()
NO = gg.alert("اختار نوع نسخة 64🖤","⟬ 100%منع اهتزاز السلاح 🔥⟭", "⟬ 50% لوبي💧⟭")
if NO == nil then
  else
    if NO == 1 then
      NR64()
    end
    if NO == 2 then
      LR64()
    end
    end
  iBug = -1
end

function NR64()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2~4;1.09375;1;18;3.5::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2~4;1.09375::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2~4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("-0.1", gg.TYPE_FLOAT)
gg.toast("🎯ɴᴏ ʀᴇᴄᴏɪʟ")
end
   
function LR64()
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "🎯ɴᴏ ʀᴇᴄᴏɪʟ"},
{["value"] = 8247572459728890950, ["type"] = 32},
{["lv"] = 32481181722559348, ["offset"] = 4, ["type"] = 32},
}
qmxg = {
{["value"] = 1634692266, ["offset"] = 0, ["type"] = 4},

}
xqmnb(karar)
end
    
function C64E()
menu1 = gg.multiChoice({
"🌡ʜᴇᴀᴅ sʜᴏᴛ⁹⁹",
"🚬ᴄᴜsᴛᴏᴍ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ",
"🎶ᴀɴᴛᴇɴɴᴀ",
"🍀ɴᴏ ɢʀᴀss",
"⚪ᴡʜɪᴛᴇ",
"🏖ɴᴏ ғᴏɢ",
"↶ ᴇxɪᴛ"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧ʟᴏʙʙʏ|ɢᴀᴍᴇ ᴍᴇɴᴜᯓ 64 ʙɪᴛ🍿")
if menu1 == nil then
 else
if menu1[1] == true then hlobby() end
if menu1[2] == true then bC1() end
if menu1[3] == true then bC2() end
if menu1[4] == true then bC3() end
if menu1[5] == true then bC4() end
if menu1[6] == true then bC5() end
if menu1[7] == true then EN64BIT() end
end
iBug = -1
end
    
function C64A()
menu1 = gg.multiChoice({
"🌡هيد شوت99",
"🚬مجك مخصص",
"🎶انتنا",
"🍀اخفاء عشب",
"⚪لون ابيض",
"🏖ازالة الضباب",
"↶ رجوع"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧لوبي|قيم قائمة نسخة 64🍿")
if menu1 == nil then
 else
if menu1[1] == true then hlobby() end
if menu1[2] == true then bC1() end
if menu1[3] == true then bC2() end
if menu1[4] == true then bC3() end
if menu1[5] == true then bC4() end
if menu1[6] == true then bC5() end
if menu1[7] == true then AR64BIT() end
end
iBug = -1
end

function bC1()
input = gg.prompt({ "sᴇᴛ ɴᴇᴡ ʀᴀɴɢᴇ | اختر قوة المجك: [100; 400]"},
{250},
{"number"})
if input == nil then BIT()else
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(input[1], gg.TYPE_FLOAT)
end
end

function bC2()
karar = {
{["memory"] = 32},
{["name"] = "🎶ᴀɴᴛᴇɴɴᴀ"},
{["value"] = 4804934254803878643, ["type"] = 32},
{["lv"] = -4410762456449774017, ["offset"] = 4, ["type"] = 32},
{["lv"] = 4575657222473777152, ["offset"] = 12, ["type"] = 32},
}
qmxg = {
{["value"] = 4610560119594024960, ["offset"] = 0, ["type"] = 32},
{["value"] = -4410762456495030272, ["offset"] = 4, ["type"] = 32},
{["value"] = 4575657222557253632, ["offset"] = 12, ["type"] = 32},

}
xqmnb(karar)
end

function bC3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(":Default__MaterialExpressionLandscapeGrassOutput", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "🍀ɴᴏ ɢʀᴀss"},
{["value"] = 72058698906520781, ["type"] = 32},
{["lv"] = 1090519040, ["offset"] = -48, ["type"] = 32},
}
qmxg = {
{["value"] = 0, ["offset"] = -48, ["type"] = 16},
}
xqmnb(karar)
end

function bC4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4575657224076056216", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
WHITEOFF=gg.getResults(1401)
gg.editAll("4975657224076056216", gg.TYPE_QWORD)
gg.toast("⚪ᴡʜɪᴛᴇ")
end

function bC5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(":Default__ExponentialHeightFog", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("🏕️ɴᴏ ғᴏɢ")
end

sit = off
para = off
function D64E()
menu1 = gg.multiChoice({
"🌡ʜᴇᴀᴅ sʜᴏᴛˢˡᵒʷ",
"🛐sɪᴛ sᴄᴏᴘᴇ"..sit,
"🎉ғᴀsᴛ ᴘᴀʀᴀᴄʜᴜᴛᴇ"..para,
"🍀ɴᴏ ɢʀᴀss",
"🍁ɴᴏ ɢʀ+ᴛʀ",
"🌲ɴᴏ ɢʀ+ᴛʀ+ʜᴏ",
"🌌ʙʟᴀᴄᴋ sᴋʏ",
"📽6th",
"🤸‍♂️sᴘᴇᴇᴅ ᴊᴜᴍᴘ",
"💨sᴘᴇᴇᴅᴋɴᴏᴄᴋ",
"🍺sᴘᴇᴇᴅ+",
"⚡ᴍᴇᴅɪᴜᴍ sᴘᴇᴇᴅʜᴀᴄᴋ",
"🧗‍♂️ ᴡᴀʟʟ ᴊᴜᴍᴘ",
"🚗sᴘᴇᴇᴅ ᴊᴇᴇᴘ",
"🚓ᴊᴜᴍᴘ ᴄᴀʀ",
"⛱ғʟʏɪɴɢ sɪᴛ",
"🎐ʟᴏɴɢ ᴘᴀʀᴀᴄʜᴜᴛᴇ",
"↶ ᴇxɪᴛ"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧ɢᴀᴍᴇ ᴍᴇɴᴜᯓ 64 ʙɪᴛ 🍿")
if menu1 == nil then
 else
if menu1[1] == true then bD1() end
if menu1[2] == true then bD2() end
if menu1[3] == true then bD3() end
if menu1[4] == true then bC3() end
if menu1[5] == true then bD5() end
if menu1[6] == true then bD6() end
if menu1[7] == true then bD7() end
if menu1[8] == true then bD8() end
if menu1[9] == true then bD9() end
if menu1[10] == true then bD10() end
if menu1[11] == true then bD11() end
if menu1[12] == true then bD12() end
if menu1[13] == true then bD13() end
if menu1[14] == true then bD14() end
if menu1[15] == true then bD15() end
if menu1[16] == true then bD16() end
if menu1[17] == true then bD17() end
if menu1[20] == true then EN64BIT() end
end
iBug = false
end

function D64A()
menu1 = gg.multiChoice({
"🌡هيدشوت  بطيئ",
"🛐سيت سكوب"..sit,
"♨️نزول سريع"..para,
"🍀اخفاء عشب",
"🍁اخفاء عشب+اشجار",
"🌲اخفاء عشب+اشجار+بيوت",
"🌌لون سماء",
"📽منظور ايباد",
"🤸‍♂️سبيد قفز",
"💨سبيد زحف",
"🍺سبيد+",
"⚡سرعة متوسطة",
"🧗‍♂️ عبور من فوق الاشياء",
"🚗سبيد جيب",
"🚓قفز سيارة",
"⛱اكعد و اتفرج",
"🎐برشوت قدااام",
"↶ رجوع"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧قيم قائمة نسخة 64🍿")
if menu1 == nil then
 else
if menu1[1] == true then bD111() end
if menu1[2] == true then bD2() end
if menu1[3] == true then bD3() end
if menu1[4] == true then bC3() end
if menu1[5] == true then bD5() end
if menu1[6] == true then bD6() end
if menu1[7] == true then bD7() end
if menu1[8] == true then bD8() end
if menu1[9] == true then bD9() end
if menu1[10] == true then bD10() end
if menu1[11] == true then bD11() end
if menu1[12] == true then bD12() end
if menu1[13] == true then bD13() end
if menu1[14] == true then bD14() end
if menu1[15] == true then bD155() end
if menu1[16] == true then bD16() end
if menu1[17] == true then bD17() end
if menu1[18] == true then AR64BIT() end
end
iBug = -1
end

function bD1()
NO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ ᯓ 64 ʙɪᴛ🖤","⟬ ʜs⁹⁹% 📕⟭", "⟬ ʜs⁷⁵% 📔⟭", "⟬ ʜs⁵⁰% 📗⟭")
if NO == nil then
  else
    if NO == 1 then
      H99()
    end
    if NO == 2 then
      H75()
    end
    if NO == 3 then
      H50()
    end
    end
  iBug = -1
end

function bD111()
NO = gg.alert("اختار النوع نسخة 64🖤","⟬ ⁹⁹% 📕⟭", "⟬ ⁷⁵%📔⟭", "⟬ ⁵⁰% 📗⟭")
if NO == nil then
  else
    if NO == 1 then
      H99()
    end
    if NO == 2 then
      H75()
    end
    if NO == 3 then
      H50()
    end
    end
  iBug = -1
end


function H99()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("250", gg.TYPE_FLOAT)
 gg.toast("🌡ʜᴇᴀᴅ sʜᴏᴛ")
end

function H75()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("176", gg.TYPE_FLOAT)
    gg.clearResults()
gg.toast("🌡ʜᴇᴀᴅ sʜᴏᴛ")
end

function H50()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("101", gg.TYPE_FLOAT)
    gg.clearResults()
gg.toast("🌡ʜᴇᴀᴅ sʜᴏᴛ")
end

function bD2()
if sit == off then
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "sɪᴛ ⚽️"},
{["value"] = 1100159584, ["type"] = 4},
{["lv"] = 1057613432, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 130.5419921875, ["offset"] = 0, ["type"] = 16},
}
xqmnb(karar)
sit = on
else
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = ""},
{["value"] = 1124240064, ["type"] = 4},
{["lv"] = 1057613432, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 18.38787841797, ["offset"] = 0, ["type"] = 16},
}
xqmnb(karar)
sit = off
end
end

function bD3()
if para == off then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
PARAOFF=gg.getResults(1401)
gg.editAll("4,525,216,907,477,699,789", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("🍺ғʟᴀsʜ2500ᴍ")
para = on
else 
gg.setValues(PARAOFF)
para = off
end
end

function bD5()
gg.clearResults()
  if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
  gg.searchNumber("0.00390625;1;0.99900001287;2", gg.TYPE_FLOAT, false)
  gg.searchNumber("1", gg.TYPE_FLOAT, false)
  NOTROFF1=gg.getResults(30)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.000005", gg.TYPE_FLOAT, false)
  NOTROFF2=gg.getResults(30)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("🍁ɴᴏ ɢʀ+ᴛʀ")
end

function bD6()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("2048D;4D;1F;1F;1D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  NOHOOFF = gg.getResults(1000)
  gg.editAll("0.07", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("🌲ɴᴏ ɢʀ+ᴛʀ+ʜᴏ")
end

function bD7()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.4028235e38;0.05000000075::5", gg.TYPE_FLOAT, false)
  gg.searchNumber("0.05000000075", gg.TYPE_FLOAT, false)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("🌌ʙʟᴀᴄᴋ sᴋʏ")
end

function bD8()
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "📽6th"},
{["value"] = 4715268810984259584, ["type"] = 32},
{["lv"] = 1130102784, ["offset"] = -24, ["type"] = 32},
}
qmxg = {
{["value"] = 438, ["offset"] = -24, ["type"] = 16},
}
xqmnb(karar)
end

function bD9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("7.0064923e-45F;0.6~1;1065353216D;100F;1065353216D;2500000000F;0.10000000149F;88F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.6~1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2500)
gg.editAll("3.5241295", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("300;0;0.05000000075;2;25::17", gg.TYPE_FLOAT, false)
gg.refineNumber("0.05000000075", gg.TYPE_FLOAT, false)
gg.getResults(2400)
gg.editAll("2.1241295", gg.TYPE_FLOAT)
gg.toast("🤸‍♂️sᴘᴇᴇᴅ ᴊᴜᴍᴘ")
end

function bD10()
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "💨sᴘᴇᴇᴅᴋɴᴏᴄᴋ"},
{["value"] = 1326777081, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -112, ["type"] = 4},
}
qmxg = {
{["value"] = 999, ["offset"] = -112, ["type"] = 16},
}
xqmnb(karar)
end

function bD11()
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "🍺sᴘᴇᴇᴅ+"},
{["value"] = 3000, ["type"] = 32},
{["lv"] = 4575657222473777152, ["offset"] = -96, ["type"] = 32},
}
qmxg = {
{["value"] = 1.20699995041, ["offset"] = -96, ["type"] = 16},
}
xqmnb(karar)
end

function bD12()
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = ""},
{["value"] = 3000, ["type"] = 32},
{["lv"] = 4575657222473777152, ["offset"] = -96, ["type"] = 32},
}
qmxg = {
{["value"] = 1.20699995041, ["offset"] = -96, ["type"] = 16},
}
xqmnb(karar)
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "⚡ᴍᴇᴅɪᴜᴍ sᴘᴇᴇᴅʜᴀᴄᴋ"},
{["value"] = 4728779609692288791, ["type"] = 32},
{["lv"] = 4575657222473777152, ["offset"] = -12, ["type"] = 32},
}
qmxg = {
{["value"] = 1.035, ["offset"] = -12, ["type"] = 16},
}
xqmnb(karar)
end

function bD13()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4,890,205,508,990,664,704", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  WALLJUMPOFF=gg.getResults(100)
  gg.editAll("4,890,205,509,012,684,800", gg.TYPE_QWORD)
  gg.toast("🧗‍♂️ɴᴇᴡ ᴡᴀʟʟ ᴊᴜᴍᴘ")
  end

function bD14()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4,510,805,389,551,707,558", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  SPEEDVOFF1=gg.getResults(100)
  gg.editAll("4,934,185,974,142,451,712", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4,571,418,540,709,091,738", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  SPEEDVOFF2=gg.getResults(100)
  gg.editAll("4,571,418,540,807,667,712", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("E0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  SPEEDVOFF3=gg.getResults(1000)
  gg.editAll("-0.25", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SPEEDVOFF4=gg.getResults(50)
gg.editAll("65.241295", gg.TYPE_FLOAT)
  gg.toast("🚘sᴘᴇᴇᴅ ᴊᴇᴇᴘ")
end

function bD15()
NO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ🖤","⟬ ᴊᴜᴍᴘ ᴊᴇᴇᴘ 🚓⟭", "⟬ ᴅᴀsɪᴀ ᴊᴜᴍᴘ🏂 ⟭")
if NO == nil then
  else
    if NO == 1 then
      JJ()
    end
    if NO == 2 then
   DJ()
    end
    end
  iBug = -1
end

function bD155()
NO = gg.alert("اختر نوع🖤","⟬ قفز جيب 🚚⟭", "⟬ قفز دايسا🏂 ⟭")
if NO == nil then
  else
    if NO == 1 then
      JJ()
    end
    if NO == 2 then
   DJ()
    end
    end
  iBug = -1
end


function JJ()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("955", gg.TYPE_FLOAT)
  gg.processResume()
  gg.sleep(1000)
  if revert ~= nil then
    gg.setValues(revert)
  end
  gg.clearResults()
  gg.toast("ᴊᴜᴍᴘ ᴊᴇᴇᴘ 🚓")
  end

function DJ()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.processResume()
  gg.sleep(1000)
  if revert ~= nil then
    gg.setValues(revert)
  end
  gg.clearResults()
  gg.toast("ᴅᴀsɪᴀ ᴊᴜᴍᴘ🏂")
end

function bD16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1099511900928", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
FLYSITOFF = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-5.029132178451386e+26", gg.TYPE_DOUBLE)
gg.toast("⛱ғʟʏɪɴɢ sɪᴛ")
end

function bD17()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.75;150;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  LONGOFF1=gg.getResults(999)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("0.75;150;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  LONGOFF2=gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("🎐ʟᴏɴɢ ᴘᴀʀᴀᴄʜᴜᴛᴇ")
end






--32bit
 --32
function EN32BIT()
menu = gg.choice({
"🕛ʙʏᴘᴀss\n ᯓ『 ᴍᴇᴍᴏʀʏ  』",
"📂🎯 ɴᴏ ʀᴇᴄᴏɪʟ\n ᯓ『 ɢᴀᴍᴇ|ʟᴏʙʙʏ 』",
"📁🌪ʜᴀᴄᴋs ғᴜɴᴄᴛɪᴏɴ\n ᯓ『 ɢᴀᴍᴇ|ʟᴏʙʙʏ 』",
"📁🎉ʜᴀᴄᴋs ғᴜɴᴄᴛɪᴏɴ\n ᯓ『 ɢᴀᴍᴇ 』",
"📁🍋ᴡʜ+ᴄᴏʟᴏʀ\n ᯓ『 ɢᴀᴍᴇ 』",
"🍺ғʟᴀsʜ2500ᴍ\n ᯓ『 ɢᴀᴍᴇ|ʟᴏʙʙʏ 』"..para,
"🔧ᴅᴀᴛᴀ ᴏɴ - ᴏғғ",
" ❌❌❌❌⌬ ᴇxɪᴛ🚫🚫🚫🚫"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧ᴍᴀɪɴ ᴍᴇɴᴜ 32 ʙɪᴛ 🍉")
if menu==1 then A()end
if menu==2 then B32E()end
if menu==3 then C32E()end
if menu==4 then D32E()end
if menu==5 then E()end
if menu==6 then bD3()end
if menu==7 then DATA()end
if menu==8 then ex()end
iBug = -1
end

function AR32BIT()
menu = gg.choice({
"🕛بايباس\n 『 ذاكرة  』",
"📂🎯 ثبات\n 『 قيم|لوبي 』",
"📁💧قائمه تهكير\n 『 قيم|لوبي 』",
"📁🔥قائمه تهكير\n 『 قيم 』",
"📁🍋وايل هاك\n 『 قيم』",
"🍺فلاش2500م\n 『 قيم|لوبي 』"..para,
"🔧ترسيت سريع",
" ❌❌❌❌⌬ خروح🚫🚫🚫🚫"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧قائمه رئيسية نسخة 32 بت🍉")
if menu==1 then A()end
if menu==2 then B32A()end
if menu==3 then C32A()end
if menu==4 then D32A()end
if menu==5 then EE()end
if menu==6 then bD3()end
if menu==7 then DATA()end
if menu==8 then ex()end
iBug = -1
end

function B32E()
NO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ ᯓ 32 ʙɪᴛ🖤","⟬ 100% 🔥⟭", "⟬ 50%💧⟭")
if NO == nil then
  else
  chack = 1
    if NO == 1 then
      NR32()
    end
    if NO == 2 then
      LR32()
    end
    end
  iBug = -1
end
    
   
function B32A()
NO = gg.alert("اختار نوع نسخة 32🖤","⟬ 100%🔥⟭", "⟬ 50%💧⟭")
if NO == nil then
  else
    if NO == 1 then
      NR32()
    end
    if NO == 2 then
      LR32()
    end
    end
  iBug = -1
end

function NR32()
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "🎯ɴᴏ ʀᴇᴄᴏɪʟ"},
{["value"] = 8247572459728890950, ["type"] = 32},
{["lv"] = 32481181722559348, ["offset"] = 4, ["type"] = 32},
}
qmxg = {
{["value"] = 1634692266, ["offset"] = 0, ["type"] = 4},

}
xqmnb(karar)
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
  gg.searchNumber("-2.786982e28;-3.7444097e28;-1.1368837e-13::", 16, false, 536870912, 0, -1)
  gg.searchNumber("-3.7444097e28", 16, false, 536870912, 0, -1)
  gg.getResults(5)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
  gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", 16, false, 536870912, 0, -1)
  gg.searchNumber("-1.1144502e28", 16, false, 536870912, 0, -1)
  gg.getResults(1)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
  gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", 16, false, 536870912, 0, -1)
  gg.searchNumber("-1.1144502e28", 16, false, 536870912, 0, -1)
  gg.getResults(1)
  gg.editAll("0", 16)
  gg.clearResults() 
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("-1387800265460020720", 32, false, gg.SIGN_EQUAL, 0, -1) 
NL100OFF2=gg.getResults(5) 
gg.editAll("-1 387 800 268 364 578 816", 32) 
end

function LR32()
gg.clearResults()
karar = {
{["memory"] = 16384},
{["name"] = "🎯ɴᴏ ʀᴇᴄᴏɪʟ"},
{["value"] = -1324187407196618612, ["type"] = 32},
{["lv"] = -1228926272664233280, ["offset"] = -8, ["type"] = 32},
}
qmxg = {
{["value"] = 0, ["offset"] = -8, ["type"] = 16},
}
xqmnb(karar)
gg.clearResults() 
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("-1387800265460020720", 32, false, gg.SIGN_EQUAL, 0, -1) 
NL100OFF2=gg.getResults(5) 
gg.editAll("-1 387 800 268 364 578 816", 32) 
end

function DATA()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('220676386071773185', gg.TYPE_QWORD)
gg.getResults(20)
gg.editAll('220676386036121600', gg.TYPE_QWORD)
gg.sleep(5500)
gg.editAll('220676386071773185', gg.TYPE_QWORD) 
gg.clearResults()
gg.toast("🔧ᴅᴀᴛᴀ ᴏɴ - ᴏғғ")
end

function C32E()
menu1 = gg.multiChoice({
"🌡ʜᴇᴀᴅ sʜᴏᴛ⁹⁹",
"🚬ᴄᴜsᴛᴏᴍ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ",
"🎶ᴀɴᴛᴇɴɴᴀ",
"🧨ɪɴsᴛᴀɴᴛ ʜɪᴛ",
"🍀ɴᴏ ɢʀᴀss",
"⚪ᴡʜɪᴛᴇ",
"⚠️ᴀɪᴍʙᴏᴛ³⁶⁰ ˡᵒᵇᵇʸ",
"🥳ᴀɪᴍʟᴏᴄᴋ³⁰",
"🏖ɴᴏ ғᴏɢ",
"↶ ᴇxɪᴛ"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧ʟᴏʙʙʏ|ɢᴀᴍᴇ ᴍᴇɴᴜᯓ 32 ʙɪᴛ 🍿")
if menu1 == nil then
 else
 if menu1[1] == true then hlobby() end
if menu1[2] == true then bC1() end
if menu1[3] == true then bC2() end
if menu1[4] == true then C7() end
if menu1[5] == true then C3() end
if menu1[6] == true then bC4() end
if menu1[7] == true then C5() end
if menu1[8] == true then C6() end
if menu1[9] == true then bC5() end
if menu1[10] == true then EN32BIT() end
end
iBug = -1
end

function C32A()
menu1 = gg.multiChoice({
"🌡هيد شوت99",
"🚬مجك مخصص",
"🎶انتنا",
"💥سوبر قتل",
"🍀اخفاء عشب",
"⚪لون ابيض",
"⚠️ايم بوت 360 لوبي فقط",
"🥳ايم لوك",
"🏖ازالة الضباب",
"↶ رجوع"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧لوبي|قيم قائمة نسخة 32🍿")
if menu1 == nil then
 else
 if menu1[1] == true then hlobby() end
if menu1[2] == true then bC1() end
if menu1[3] == true then bC2() end
if menu1[4] == true then C7() end
if menu1[5] == true then C3() end
if menu1[6] == true then bC4() end
if menu1[7] == true then C5() end
if menu1[8] == true then C6() end
if menu1[9] == true then bC5() end
if menu1[10] == true then AR32BIT() end
end
iBug = -1
end

function hlobby()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("560", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("微子弹🌡ʜᴇᴀᴅ sʜᴏᴛ")
end

function C7()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.9986295104", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.9986295104", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("1224995", gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast("🧨ɪɴsᴛᴀɴᴛ ʜɪᴛ")
end

function C5()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.toast("⚠️ᴀɪᴍʙᴏᴛ³⁶⁰")
end

function C6()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
AIMLOCKOFF1=gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("🥳ᴀɪᴍʟᴏᴄᴋ")
end

function C3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(":Default__MaterialExpressionLandscapeGrassOutput", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
  karar = {
{["memory"] = 4},
{["name"] = "🍀ɴᴏ ɢʀᴀss"},
{["value"] = 743073927, ["type"] = 4},
{["lv"] = 33555456, ["offset"] = 4, ["type"] = 4},
{["lv"] = 537395204, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
}
xqmnb(karar)
end


function D32E()
menu1 = gg.multiChoice({
"🌡ʜᴇᴀᴅ sʜᴏᴛˢˡᵒʷ",
"🛐sɪᴛ sᴄᴏᴘᴇ"..sit,
"🎉ғᴀsᴛ ᴘᴀʀᴀᴄʜᴜᴛᴇ"..para,
"🍀ɴᴏ ɢʀᴀss",
"🍁ɴᴏ ɢʀ+ᴛʀ",
"🌲ɴᴏ ɢʀ+ᴛʀ+ʜᴏ",
"🌌ʙʟᴀᴄᴋ sᴋʏ",
"📽6th",
"🤸‍♂️sᴘᴇᴇᴅ ᴊᴜᴍᴘ",
"💨sᴘᴇᴇᴅᴋɴᴏᴄᴋ",
"🍺sᴘᴇᴇᴅ+",
"⚡ᴍᴇᴅɪᴜᴍ sᴘᴇᴇᴅʜᴀᴄᴋ",
"🧗‍♂️ ᴡᴀʟʟ ᴊᴜᴍᴘ",
"🚗sᴘᴇᴇᴅ ᴊᴇᴇᴘ",
"🚓ᴊᴜᴍᴘ ᴄᴀʀ",
"⛱ғʟʏɪɴɢ sɪᴛ",
"🎐ʟᴏɴɢ ᴘᴀʀᴀᴄʜᴜᴛᴇ",
"↶ ᴇxɪᴛ"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧ɢᴀᴍᴇ ᴍᴇɴᴜᯓ 32 ʙɪᴛ 🍿")
if menu1 == nil then
 else
if menu1[1] == true then D1() end
if menu1[2] == true then bD2() end
if menu1[3] == true then bD3() end
if menu1[4] == true then C3() end
if menu1[5] == true then bD5() end
if menu1[6] == true then bD6() end
if menu1[7] == true then bD7() end
if menu1[8] == true then bD8() end
if menu1[9] == true then D9() end
if menu1[10] == true then D10() end
if menu1[11] == true then D11() end
if menu1[12] == true then D12() end
if menu1[13] == true then bD13() end
if menu1[14] == true then bD14() end
if menu1[15] == true then bD15() end
if menu1[16] == true then bD16() end
if menu1[17] == true then bD17() end
if menu1[18] == true then EN32BIT() end
end
iBug = false
end

function D32A()
menu1 = gg.multiChoice({
"🌡هيدشوت  بطيئ",
"🛐سيت سكوب"..sit,
"♨️نزول سريع"..para,
"🍀اخفاء عشب",
"🍁اخفاء عشب+اشجار",
"🌲اخفاء عشب+اشجار+بيوت",
"🌌لون سماء",
"📽منظور ايباد",
"🤸‍♂️سبيد قفز",
"💨سبيد زحف",
"🍺سبيد+",
"⚡سرعة متوسطة",
"🧗‍♂️ عبور من فوق الاشياء",
"🚗سبيد جيب",
"🚓قفز سيارة",
"⛱اكعد و اتفرج",
"🎐برشوت قدااام",
"↶ رجوع"},nil,"ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧قيم قائمة نسخة 32🍿")
if menu1 == nil then
 else
if menu1[1] == true then D111() end
if menu1[2] == true then bD2() end
if menu1[3] == true then bD3() end
if menu1[4] == true then C3() end
if menu1[5] == true then bD5() end
if menu1[6] == true then bD6() end
if menu1[7] == true then bD7() end
if menu1[8] == true then bD8() end
if menu1[9] == true then D9() end
if menu1[10] == true then D10() end
if menu1[11] == true then D11() end
if menu1[12] == true then D12() end
if menu1[13] == true then bD13() end
if menu1[14] == true then bD14() end
if menu1[15] == true then bD155() end
if menu1[16] == true then bD16() end
if menu1[17] == true then bD17() end
if menu1[18] == true then AR32BIT() end
end
iBug = -1
end

function D1()
NO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ ᯓ 32ʙɪᴛ🖤","⟬ ʜs⁹⁹% 📕⟭", "⟬ ʜs⁷⁵% 📔⟭", "⟬ ʜs⁵⁰% 📗⟭")
if NO == nil then
  else
    if NO == 1 then
      H99()
    end
    if NO == 2 then
      H75()
    end
    if NO == 3 then
      H50()
    end
    end
  iBug = -1
end


function D111()
NO = gg.alert("اختار النوع نسخة 32🖤","⟬ ⁹⁹% 📕⟭", "⟬ ⁷⁵%📔⟭", "⟬ ⁵⁰% 📗⟭")
if NO == nil then
  else
    if NO == 1 then
      H99()
    end
    if NO == 2 then
      H75()
    end
    if NO == 3 then
      H50()
    end
    end
  iBug = -1
end


function H99()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("250", gg.TYPE_FLOAT)
 gg.toast("🌡ʜᴇᴀᴅ sʜᴏᴛ")
end



function E()
NO = gg.alert("➧ᴄʜᴏᴏsᴇ ᴏɴᴇ 🖤","⟬ sɴᴀᴘᴅʀᴀɢᴏɴ 🍭⟭", "⟬ ᴏᴛʜᴇʀs 🧁⟭")
if NO == nil then
  else
    if NO == 1 then
      SNAPDRAGON()
    end
    if NO == 2 then
      CHIPSET()
    end
    end
  iBug = -1
end

function EE()
NO = gg.alert("اختار نوع 🖤","⟬ سناب 🍭⟭", "⟬ اخرى 🧁⟭")
if NO == nil then
  else
    if NO == 1 then
      SNAPDRAGON()
    end
    if NO == 2 then
      CHIPSET()
    end
    end
  iBug = -1
end

function D9()
gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber("16;4,575,657,222,473,777,152;1,065,353,216;17,179,869,188:37", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 local t = gg.getResults(1000)
 gg.searchNumber("4,575,657,222,473,777,152", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 local t = gg.getResults(500)
 gg.editAll("4,575,657,222,488,624,988", gg.TYPE_QWORD)
gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber("1,133,903,872;4,611,686,019,455,831,245;1,103,626,240;4,575,657,222,517,817,344:25", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 local t = gg.getResults(1000)
 gg.searchNumber("4,611,686,019,455,831,245", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 local t = gg.getResults(500)
 gg.editAll("4,611,686,019,501,674,988", gg.TYPE_QWORD) 
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-6.1526231e27;-1.0070975e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
 gg.toast("🤸‍♂️sᴘᴇᴇᴅ ᴊᴜᴍᴘ")
end

function D10()
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "💨sᴘᴇᴇᴅᴋɴᴏᴄᴋ"},
{["value"] = 4834051251168591872, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 32},
}
qmxg = {
{["value"] = 9, ["offset"] = -8, ["type"] = 16},
}
xqmnb(karar)
end

function D11()
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "🍺sᴘᴇᴇᴅ+"},
{["value"] = 3000, ["type"] = 32},
{["lv"] = 4575657222473777152, ["offset"] = -80, ["type"] = 32},
}
qmxg = {
{["value"] = 1.20699995041, ["offset"] = -80, ["type"] = 16},
}
xqmnb(karar)
end

function D12()
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = ""},
{["value"] = 3000, ["type"] = 32},
{["lv"] = 4575657222473777152, ["offset"] = -80, ["type"] = 32},
}
qmxg = {
{["value"] = 1.20699995041, ["offset"] = -80, ["type"] = 16},
}
xqmnb(karar)
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "⚡ᴍᴇᴅɪᴜᴍ sᴘᴇᴇᴅʜᴀᴄᴋ"},
{["value"] = 4728779609692288791, ["type"] = 32},
{["lv"] = 4575657222473777152, ["offset"] = -12, ["type"] = 32},
}
qmxg = {
{["value"] = 1.035, ["offset"] = -12, ["type"] = 16},
}
xqmnb(karar)
end




item = off
function SNAPDRAGON()
  WALL11 = gg.multiChoice({
    "🦁435-700 + ᴄʟ",
    "🦁700-855 + ᴄʟ",
    "🦁ᴡᴀʟʟʜᴀᴄᴋ ɪᴛᴇᴍ"..item,
    "↶ ᴇxɪᴛ"
  }, nil, "ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧ᴡᴀʟʟʜᴀᴄᴋ ᴍᴇɴᴜ 🍿")
  if WALL11 == nil then
  else
    if WALL11[1] == true then
      wh1()
    end
    if WALL11[2] == true then
      wh2()
    end
    if WALL11[3] == true then
      wh3()
    end
    if WALL11[45] == true then
      if iBug == 1 and CMENU == 1 then
    HOME()
  end
  if iBug == 1 and CMENU == 2 then
    HOME2()
  end
    end
  end
  PUBGMH = -1
end

function wh1()
  gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2147086191", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
   if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
end

function wh2()
  gg.clearResults()
 if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2145644340", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
 if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2147483636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4F8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
 if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("8199", gg.TYPE_DWORD)
gg.clearResults()
 if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("120", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("8199", gg.TYPE_DWORD)
gg.clearResults()
 if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("128", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("8200", gg.TYPE_DWORD)
gg.clearResults()
if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
  gg.searchNumber("1 078 984 714", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
KARARWALL3=gg.getResults(100) 
gg.editAll("-1", gg.TYPE_DWORD) 
gg.clearResults()
end
function wh3()
if item == off then
gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-7.00649232e-45",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.refineAddress("38",-1,gg.TYPE_FLOAT,gg.SIGN_EQUAL,0,-1)
ITEM1=gg.getResults(1337)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-3.12839322e-39",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.refineAddress("38",-1,gg.TYPE_FLOAT,gg.SIGN_EQUAL,0,-1)
ITEM2=gg.getResults(1337)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.clearResults()
item = on
else
gg.setValues(ITEM1)
gg.setValues(ITEM2)
item = off
end
end


function CHIPSET()
  WALL22 = gg.multiChoice({
    "🐸 ᴀʟʟ ᴅᴇᴠɪᴄᴇ",
    "🐸 ғɪx ʙʟɪɴᴋ",
    "🐸 ғɪx sᴄᴏᴘᴇ",
    "🐸 ᴇxʏɴᴏs 7420",
    "🐸 ᴇxʏɴᴏs 7570",
    "🐸 ᴇxʏɴᴏs 7870",
    "🐸 ᴇxʏɴᴏs 7880",
    "🐸 ᴇxʏɴᴏs 7885",
    "🐸 ᴇxʏɴᴏs 8890",
    "🐸 ᴇxʏɴᴏs 8895",
    "🐸 ᴇxʏɴᴏs 9610",
    "🐸 ᴇxʏɴᴏs 9810",
    "🐸 ʜᴜᴀᴡᴇɪ",
    "🐸 ᴋɪʀɪɴ 650",
    "🐸 ᴋɪʀɪɴ 655",
    "🐸 ᴋɪʀɪɴ 658",
    "🐸 ᴋɪʀɪɴ 659",
    "🐸 ᴋɪʀɪɴ 710",
    "🐸 ᴋɪʀɪɴ 955",
    "🐸 ᴋɪʀɪɴ 970",
    "🐸 ᴋɪʀɪɴ 980",
    "🐸 ᴍᴇᴅɪᴀᴛᴇᴋ 6750",
    "🐸 ᴍᴇᴅɪᴀᴛᴇᴋ 6765",
    "🐸 ᴍᴇᴅɪᴀᴛᴇᴋ ɢ90ᴛ",
    "↶ ᴇxɪᴛ",
  }, nil, "ʙʟᴀᴄᴋᴏᴘs ᴠɪᴘ➧ᴡᴀʟʟʜᴀᴄᴋ ᴍᴇɴᴜ 🍿")
  if WALL22 == nil then
  else
    if WALL22[1] == true then
      wc1()
    end
    if WALL22[2] == true then
      wc2()
    end
    if WALL22[3] == true then
      wc3()
    end
    if WALL22[4] == true then
      wc4()
    end
    if WALL22[5] == true then
      wc5()
    end
    if WALL22[6] == true then
      wc6()
    end
    if WALL22[7] == true then
      wc7()
    end
    if WALL22[8] == true then
      wc8()
    end
    if WALL22[9] == true then
      wc9()
    end
    if WALL22[10] == true then
      wc10()
    end
    if WALL22[11] == true then
      wc11()
    end
    if WALL22[12] == true then
      wc12()
    end
    if WALL22[13] == true then
      wc13()
    end
    if WALL22[14] == true then
      wc14()
    end
    if WALL22[15] == true then
      wc15()
    end
    if WALL22[16] == true then
      wc16()
    end
    if WALL22[17] == true then
      wc17()
    end
    if WALL22[18] == true then
      wc18()
    end
    if WALL22[19] == true then
      wc19()
    end
    if WALL22[20] == true then
      wc20()
    end
    if WALL22[21] == true then
      wc21()
    end
    if WALL22[22] == true then
      wc22()
    end
    if WALL22[23] == true then
      wc23()
    end
    if WALL22[24] == true then
      wc24()
    end
    if WALL22[25] == true then
      if iBug == 1 and CMENU == 1 then
    HOME()
  end
  if iBug == 1 and CMENU == 2 then
    HOME2()
  end
    end
  end
  PUBGMH = -1
end

function wc4()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("40;32;16;2::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.searchNumber("0.5;1.098618e-42;2.24207754e-44;2.69049305e-43;1.68155816e-44:645", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_4_, _FORV_5_ in ipairs(t) do
        if _FORV_5_.flags == gg.TYPE_FLOAT then
          _FORV_5_.value = "0"
          _FORV_5_.freeze = true
        end
      end
    end
  end
  gg.addListItems(t)
  t = nil
  gg.processResume()
end
  function wc1()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wc2()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("4140D;1.1202011e-19~1.1202013e-19;1.1202015e-19~1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wc3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("2.001", gg.TYPE_FLOAT)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("2.001", gg.TYPE_FLOAT)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
end
function wc5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("360;0;0;0;-640;1;1;1;0;0;0;0;1;360;640;0.5;0;0;0;0.5;1;1;0;0;0;0;0;1;1;1;1;1,098618e-48:373", gg.TYPE_FLOAT)
  gg.searchNumber("0.5", gg.TYPE_FLOAT)
  t = gg.getResults(10)
  gg.editAll("50", gg.TYPE_FLOAT)
  t[1].value = "50"
  t[2].value = "50"
  t[3].value = "50"
  t[4].value = "50"
  t[5].value = "50"
  t[6].value = "50"
  t[1].freeze = true
  t[2].freeze = true
  t[3].freeze = true
  t[4].freeze = true
  t[5].freeze = true
  t[6].freeze = true
print("addListItems: ", gg.addListItems(t))
end
function wc6()
gg.clearResults()
gg.searchNumber("1.4012985e-45;1.793662e-43;1.4012985e-45;2.8025969e-45;3.5873241e-43;1.1210388e-44;0.5;0.5;2.8025969e-45;1.4012985e-45:253", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = "1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end
function wc7()
  if w == 1 then
    WHFIX7880()
  else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.5;2.8025969e-45;4D;2D;14D;5D;-1D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("0.5;2.8025969e-45;4D;2D;14D;5D;-1D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("鉂嶸value Not Found")
    else
      gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      _Count = gg.getResultCount()
      _A = gg.getResults(_Count)
      last_Count = _Count + 1
      w = 1
      _T = "7880 "
      WHFIX7880()
    end
  end
end
function WHFIX7880()
  if w == 0 then
    gg.alert("Value Not Found")
  else
    gg.setVisible(false)
    _CL = {}
    for _FORV_3_ = 1, _Count do
      _CL[_FORV_3_] = "Edit" .. _FORV_3_ .. L0_14("�������������������������������������������")
    end
    _CL[last_Count] = "Return"
    _C_ = gg.choice(_CL, nil, "7880 ")
    for _FORV_3_ = 1, _Count do
      if _C_ == _FORV_3_ then
        for _FORV_7_, _FORV_8_ in ipairs(_A) do
          _A[_FORV_7_].freeze = false
          gg.addListItems(_A)
        end
        _A[_FORV_3_].value = 1
        _A[_FORV_3_].freeze = true
        gg.addListItems(_A)
        _FORV_3_ = _Count
      elseif K_2 == _Count + 1 then
        DDVGaming()
      end
    end
  end
  gg.setVisible(true)
end
function wc8()
  gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"1.1210388e-44;360.0;0.5:41"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('"0.5"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = '"0"'
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.searchNumber("40D;32D;16D;2D::53", 4, false, 536870912, 0, -1)
gg.refineNumber("40", 4, false, 536870912, 0, -1)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = '"38"'
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end
function wc10()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("40;32;16;2::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4,09179152e-43;2,24207754e-44;3,58732407e-43;1,12103877e-44;3,30706438e-43;2,24207754e-44;3,69942795e-43;4,09179152e-43;2,24207754e-44;3,58732407e-43;1,12103877e-44;1,79366203e-43;1,12103877e-44;0,5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  t[1].value = "2"
  t[2].value = "2"
  t[3].value = "2"
  t[4].value = "2"
  t[5].value = "2"
  t[6].value = "2"
  t[1].freeze = true
  t[2].freeze = true
  t[3].freeze = true
  t[4].freeze = true
  t[5].freeze = true
  t[6].freeze = true
print("addListItems: ", gg.addListItems(t))
  gg.clearResults()
  gg.searchNumber("573.70306396484;0.05499718333.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1200)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56; 64; 48: 35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("58", gg.TYPE_DWORD)
end
function wc11()
gg.clearList()
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5.73831721e-42;1.83673795e-40;4.59177481e-40;3.85303814e-34;2.03203972e-39;2.80259693e-45;4.20389539e-45;1.40129846e-45;1.79366203e-43;2.80259693e-45;3.58732407e-43;1.12103877e-44;776.0;360.0;0.5;776.0;360.0;0.5;0.27913400531;0.56855899096;0.765625;0.99998998642;12,000.0;0.00003;-0.00161743164;1.098618e-42;1.40129846e-45;1.40129846e-45;8.40779079e-45;1.40129846e-45;4.48415509e-44;7.00649232e-45:509", gg.TYPE_FLOAT)
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  z = gg.getResults(4)
  x = gg.getResultCount()
  for _FORV_3_ = 1, x do
    y = z[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = y,
        flags = 16,
        freeze = true,
        value = 2
      }
    })
    end
end
function wc12()
  gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"0.5;2.8025969e-45;4D;2D;14D;5D;-1D"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('"0.5"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = '"0"'
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.processResume()

gg.clearResults()
gg.searchNumber("40D;32D;16D;2D::53", 4, false, 536870912, 0, -1)
gg.refineNumber("40", 4, false, 536870912, 0, -1)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = '"38"'
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end
function wc13()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;1.1204989e-19;1.6815582e-44;1.5414283e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2;4.7408166e21;5.6896623e-29;4.7961574e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;4.8699472e21;2.718519e-43;1.3912525e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2;3.2363458e-17;7.3900417e-40;5.3249342e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(40)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2;4.9252829e21;2.718519e-43;1.3912552e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1;4.8699472e21;2.718519e-43;1.3912525e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1;4.9252829e21;2.718519e-43;1.3912552e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("120", gg.TYPE_FLOAT)
end
function wc14()
  gg.clearResults()
  gg.searchNumber("8.4077908e-45;4.2038954e-45;1.5694543e-43;1.4012985e-45;2.8025969e-45;268.0;480.0;0.5:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "1"
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
end
function wc15()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("8.5077908e-45;4.2038954e-45;2.8025969e-45;0.5;0.5;2.8025969e-45;1.4012985e-45;7.0064923e-45:337", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "6"
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.searchNumber("56;64;80;16;80:93", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "7"
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)))
end
function wc16()
  gg.setRanges(gg.REGION_C_ALLOC)

gg.clearResults()
gg.searchNumber("-4327959240846082048Q;4865576448477364224Q;4575657222541279232Q:21", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("-4327959240846082048", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_QWORD then
		v.value = "-4327959240837693440"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end
function wc17()
  gg.searchNumber("0.5;1.4012985e-45;4.7083628e-43;2.8025969e-45;2.2958874e-41::109", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
end
function wc18()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.8367379e-40;4.5917748e-40;4.2038954e-45;1.4012985e-45;1.793662e-43;1.4012985e-45;2.8025969e-45;1.1210388e-44;0.5:281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
 if v.flags == gg.TYPE_FLOAT then
  v.value = "0"
  v.freeze = true
 end
end
gg.addListItems(t)
t = nil
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("25", gg.TYPE_DWORD)
end
function wc19()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4.2038954e-45;1.4012985e-45;1.5694543e-43;1.4012985e-45;2.8025969e-45;0.5:109", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(4)
  gg.editAll("1", gg.TYPE_FLOAT)
  var = gg.getResults(22)
  var[1].value = 1
  var[1].Freeze = false
  var[2].value = 1
  var[2].freeze = true
  var[3].value = 1
  var[3].Freeze = false
  var[4].value = 1
  var[4].freeze = true
  gg.addListItems(var)
  gg.clearResults()
end
function wc20()
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("3.8530377e-34;1.4810267e-39;1.4012985e-45;4.2038954e-45;4.2038954e-45;7.0064923e-45;4.2038954e-45;1.4012985e-45;1.793662e-43;1.4012985e-45;2.8025969e-45;3.5873241e-43;1.1210388e-44;776.0;360.0;0.5:273", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.getResults(20)
end
function wc21()
  if w == 1 then
    WHFIX980()
  else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.5;360.0;360.0;752.0;752.0;1.0;1.0;1.0;1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("Value Not Found")
    else
      gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      _Count = gg.getResultCount()
      _A = gg.getResults(_Count)
      last_Count = _Count + 1
      w = 1
      _T = "Edit Wallhack Value"
      WHFIX980()
    end
  end
end
function WHFIX980()
  if w == 0 then
    gg.alert("Value Not Found")
  else
    gg.setVisible(false)
    _CL = {}
    for _FORV_3_ = 1, _Count do
      _CL[_FORV_3_] = " Value   " .. _FORV_3_ .. L0_14("�����������������������������")
    end
    _CL[last_Count] = "BACK"
    _C_ = gg.choice(_CL, nil, "Wallhack Kirin 980")
    for _FORV_3_ = 1, _Count do
      if _C_ == _FORV_3_ then
        for _FORV_7_, _FORV_8_ in ipairs(_A) do
          _A[_FORV_7_].freeze = false
          gg.addListItems(_A)
        end
        _A[_FORV_3_].value = 0
        _A[_FORV_3_].freeze = true
        gg.addListItems(_A)
        _FORV_3_ = _Count
      elseif K_2 == _Count + 1 then
        WHK4()
      end
    end
  end
  gg.setVisible(true)
end
function wc22()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56D;1407374883684354Q;0.5F:573", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(13, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("54", gg.TYPE_DWORD)
  gg.processResume()
  gg.processResume()
  gg.searchNumber("54D;1407374883684354Q;0.5F:573", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(13, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.searchNumber("54D;1407374883684354Q;0.5F:573", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(13, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(13, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "1"
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(13, nil, nil, nil, nil, nil, nil, nil, nil)))
end
function wc23()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131,074;1;1,131,413,504;1,137,967,104;1,056,964,608:225", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1,056,964,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_DWORD then
      _FORV_4_.value = "1,066,364,609"
      _FORV_4_.freeze = true
      gg["1learResults"]()
    end
  end
end
function wc24()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("40;32;16;2::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.067767e-39;0.5::257", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.getResultsCount()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.251438e-39;0.5::273", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.getResultsCount()
  gg.clearResults()
  gg.searchNumber("573.70306396484;0.05499718333.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1200)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56; 64; 48: 35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("58", gg.TYPE_DWORD)
end

function ex()
print("🤣ᴅᴀᴛᴀ ʜᴀs ᴄʜᴀɴɢᴇᴅ ᴀɴᴅ ʏᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ᴅɪsᴄᴏɴɴᴇᴄᴛᴇᴅ")
 print("☆┌─┐   .─┐☆")
  print("    │▒│ /▒/      ")
  print("    │▒│/▒/       ")
  print("    │▒/▒/─┬─┐  ")
  print("    │▒│▒|▒│▒│  ")
  print("┌┴─┴─┐-┘─┘   ")
  print("│▒┌──┘▒▒▒│ ")
  print("└┐▒▒▒▒▒▒┌┘ ")
  print("    └┐▒▒▒▒┌┘")
  print("@bnsofficielle")
  print("@bnsadmin")
os.exit()
end


while true do
  if gg.isVisible(true) then
    iBug = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if iBug == 1 and CMENU == 0 then
    BIT()
  end
  if iBug == 1 and CMENU == 1 and check == 1 then
    EN64BIT()
  end
  if iBug == 1 and CMENU == 2 and check == 1 then
    AR64BIT()
  end
  if iBug == 1 and CMENU == 1 and check == 0 then
    EN32BIT()
  end
  if iBug == 1 and CMENU == 2 and check == 0 then
    AR32BIT()
  end
end
