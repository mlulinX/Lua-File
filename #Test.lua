--if io.open('/storage/emulated/0/Android/data/naing') then 
--os.remove('/storage/emulated/0/Android/data/naing')



LoginURL= "http://psmyanmar.com/nlwmyanmar/Login.php"
if LoginURL == nil or LoginURL == '' then print("ᴜsᴇʀ ᴄᴀɴᴄᴇʟʟᴇᴅ") os.exit() end
function split(s, delimiter)  result = {}; for match in (s..delimiter):gmatch("(.-)"..delimiter) do table.insert(result, match); end return result; end function WriteText(Direc,Text)f = io.open(Direc, "w") f:write(Text) f:close() end  
function MakeRequest(URL,parm)  Content = gg.makeRequest(URL,nil,parm).content  if Content == nil or Content == '' then print("ᴄᴀɴᴄᴇʟʟᴇᴅ ʙʏ ᴜsᴇʀ" ) os.exit() end load('Dfile  = '.."string.char(table.unpack(".. "{"..Content:gsub(string.char(tonumber("40",16))..string.char(tonumber("45",16))..string.char(tonumber("6e",16))..string.char(tonumber("63",16))..string.char(tonumber("72",16))..string.char(tonumber("79",16))..string.char(tonumber("70",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("20",16))..string.char(tonumber("72",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("70",16))..string.char(tonumber("6f",16))..string.char(tonumber("6e",16))..string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("20",16))..string.char(tonumber("42",16))..string.char(tonumber("79",16))..string.char(tonumber("20",16))..string.char(tonumber("44",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("6b",16))..string.char(tonumber("69",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("43",16))..string.char(tonumber("68",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))..string.char(tonumber("2c",16)),""):gsub(",","~ 255,").."~ 255}".."))")() return Dfile  end  

local open = io.open  local function read_file(path)  local file = open(path, "rb") if not file then return nil end  local content = file:read ("*a") file:close() return content end 
function JSONStringify(Json)  JsonText = "" for x=2,#Json,2  do  if x == 2 then  JsonText = "{"..'"'..Json[x-1]..'":'..'"'..Json[x]..'"'  else JsonText =JsonText..',"'..Json[x-1]..'":'..'"'..Json[x]..'"'  end if x == #Json then JsonText = JsonText.."}" end end return JsonText end
function Main()
if read_file(gg.EXT_STORAGE.."/naing") ~= nil and string.len(read_file(gg.EXT_STORAGE.."/naing"))  > 2 then
Choice = gg.choice({"\t\tᴇɴᴛᴇʀ☑","☣ᴇxɪᴛ ᴀᴄᴄᴏᴜɴᴛ☣"})
if Choice == nil or Choice == '' then
	print("ᴜsᴇʀ ᴇxɪᴛ !")
	os.exit()
	end
if Choice == 1 then
__ = read_file(gg.EXT_STORAGE.."/naing")
ResponseContent = MakeRequest(LoginURL,__)
Data = split(ResponseContent,"{SeParator}{SeParator}{Separator}")
gg.alert(Data[1])
load(Data[2])()
return;
else
WriteText(gg.EXT_STORAGE.."/naing","")
end
end
Prompt = gg.prompt({"ᴜsᴇʀɴᴀᴍᴇ","ᴘᴀssᴡᴏʀᴅ","ᴇxɪᴛ"},nil,{"text","text","checkbox"})
if Prompt == nil or Prompt == '' then
	print("ᴇxɪᴛ sᴄʀɪᴘᴛ ⛔")
	os.exit()
	end
	if Prompt[3] then
	return
	end

TempLogin = JSONStringify({"Username",Prompt[1],"Password",Prompt[2]})

ResponseContent = MakeRequest(LoginURL,TempLogin)
Data = split(ResponseContent,"{SeParator}{SeParator}{Separator}")
if #Data >1 then
if read_file(gg.EXT_STORAGE.."/naing") == nil or string.len(read_file(gg.EXT_STORAGE.."/naing")) < 2  then
WriteText(gg.EXT_STORAGE.."/naing",TempLogin)
end
gg.alert(Data[1])
if not Data[2] then
Main()
end
load(Data[2])()
else
load(Data[1])()
Main()
end
end
Main()

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."Open successfully")else gg.toast(_on.."Open failed")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("already edited"..#t.."Article data") gg.addListItems(t) else gg.toast(" found", false) return false end else gg.toast(" Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if  nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Open failed") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Open failed") else sl = gg.getResults(9999899) sz = gg.getResultCount() xgsl = 0 if sz > 99998 then sz = 99998 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Opensuccess,Totalmodify" .. xgsl .. "Article data") else gg.toast(qmnb[2]["name"] .. "Open failed") end end end end
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."already edited"..#t.."Article data")     gg.addListItems(t)  else  gg.toast(Mingcg.."Open failed", false)  return false  end  else  gg.toast("Search failed") return false  end end
function libBase(offset, type, value, name) a = os.clock() gg.setValues({ [1] = { address = gg.getRangesList('libUE4.so' or 'libtersafe.so')[1].start + offset, flags = type, value = value}}) b = os.clock() - a gg.toast(name .. ' MODIFIED \nIN '..b) end
function read_file(path)
  local file = io.open(path, "rb")
  if  file then
    return nil
  end
  local content = file:read("*a")
  file:close()
  return content
end

local t = 30
gg.sleep(500)
for i = 1, t do
    local j = t - i
    gg.toast((' 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹'):rep(i)..('🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸'):rep(j))
    gg.sleep(220)
end
gg.alert(os.date("\n➤ ᴡᴇʟᴄᴏᴍᴇ ᴛᴏ ᴄ2s4 ғᴏʀ ɴᴇᴡ sᴄʀɪᴘᴛ\n➤ᴛʜᴇ ᴍᴀɪɴ sᴄʀɪᴘᴛ ʙʏ ᴍʀ ɴʟᴡɢᴍᴀɪɴɢ ™\n➤ sᴜᴘᴘᴏʀᴛᴇᴅ ʙʏ ᴍʀ ɴʟᴡɢᴍᴀɪɴɢ™\n⚙️ ᴘᴜʙɢᴍ sᴇᴛᴛɪɴɢs:\n▶ ᴀᴜᴛᴏ ɢʀᴀᴘʜɪᴄ: ᴅɪsᴀʙʟᴇ\n\n⚙ ɢɢ sᴇᴛᴛɪɴɢs:\n➣ ʜɪᴅᴇ ɢɢ ғʀᴏᴍ ᴛʜᴇ ɢᴀᴍᴇ : 2/3\n➣ ғʀᴇᴇᴢᴇ ɪɴᴛᴇʀᴠᴇʟ: 0\n➣ ᴅᴀᴛᴀ ɪɴ ʀᴀᴍ: ɴᴏ\n➣ ᴘʀᴇᴠᴇɴᴛ ᴜɴʟᴏᴀᴅ: ʟᴠ3\n\nᴛʜᴀɴᴋ ʏᴏᴜ [ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™ ᴛᴇᴀᴍᴜsᴇʀs\n╔═══►✯︎[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™ ᴛᴇᴀᴍɢᴀᴍɪɴɢ\n╠══►✯︎ ᴛᴏᴅᴀʏ: %d.%m.%y\n╚═►✯︎ᴛɪᴍᴇ: %X\n\n❣ ᴛɪᴘ:\n❌ ᴅᴏɴ'ᴛ ᴘʟᴀʏ ʙʀᴜᴛᴀʟ ɢᴀᴍᴇ ᴘʟᴀʏ\n☑️ ᴜsᴇ sᴀғᴇ sᴛʏʟᴇ ʜᴀᴄᴋ\n☑️ ᴘʟᴀʏ ʟɪᴋᴇ ᴀ ᴘʀᴏ"), "⟬NEXT⟭")
gg.toast("Script VIP By YouKnow•nlw")

gg.setVisible(false)
NLWGAMING = 1
function HOME()
NLW = gg.multiChoice({
"▄︻̷̿┻̿═━一 𝙱𝚈𝙿𝙰𝚂𝚂 𝙻𝙾𝙱𝙱𝚈",
"▄︻̷̿┻̿═━一 𝙾𝙵𝙻𝙸𝙽𝙴 ғɪx 𝚕𝚘𝚐𝚘",
"▄︻̷̿┻̿═━一 3𝚁𝙳 ғɪx 𝚕𝚘𝚐𝚘",
"▄︻̷̿┻̿═━一 𝚆𝙲&𝚂𝙳 𝚃𝚛𝚊𝚒𝚗𝚒𝚗𝚐",
"▄︻̷̿┻̿═━一 𝚆𝙲&𝙶90𝚃+𝙶80 𝚃𝚛𝚊𝚒𝚗𝚒𝚗𝚐",
"▄︻̷̿┻̿═━一 𝙼𝙰𝙸𝙽 𝙷𝙰𝙲𝙺 𝙼𝙴𝙽𝚄",
"▄︻̷̿┻̿═━一 𝚂𝙿𝙴𝙴𝙳 𝙷𝙰𝙲𝙺",
"▄︻̷̿┻̿═━一 𝙺𝙽𝙾𝙲𝙺 𝚂𝙿𝙴𝙴𝙳 𝙶𝚊𝚖𝚎",
"▄︻̷̿┻̿═━一 𝙲𝚊𝚛 𝙹𝚞𝚖𝚙",
"▄︻̷̿┻̿═━一 𝚆𝚊𝚕𝚕𝚂𝚑𝚘𝚝 𝙶𝚊𝚖𝚎",
"▄︻̷̿┻̿═━一 𝚂𝙺𝙸𝙽 𝙷𝙰𝙲𝙺",
"🇲🇲⭐🅴🆇🅸🆃⭐🇲🇲"}, nil, os.date("╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW == nil then
else
if NLW[1] == true then
By()
end 
if NLW[2] == true then
dd()
end 
if NLW[3] == true then
td()
end 
if NLW[4] == true then
WC()
end 
if NLW[5] == true then
NLWMTK()
end 
if NLW[6] == true then
MHW()
end 
if NLW[7] == true then
DT()
end 
if NLW[8] == true then
mn()
end 
if NLW[9] == true then
jump()
end 
if NLW[10] == true then
ws()
end 
if NLW[11] == true then
SKIN()
end
if NLW[12] == true then
hh()
end
if NLW[13] == true then
EXIT()
end 
end 
NLWGAMING = -1
end 

function WC()
NLW2 = gg.multiChoice({
"🇳 🇱 🇼𝚂𝙳-𝟼𝟸𝟻 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟼𝟹𝟼 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟼𝟼𝟶 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟼𝟼𝟻 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟼𝟼2 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟼𝟽𝟻 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟼𝟽𝟾 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟽𝟷𝟶 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟽𝟷𝟸 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟽𝟸𝟶&750G ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟽𝟹𝟶 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟾𝟸𝟶 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟾𝟹𝟻 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟾𝟺𝟻 ❪𝚆&𝙲❫",
"🇳 🇱 🇼𝚂𝙳-𝟾𝟻𝟻 ❪𝚆&𝙲❫",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW2 == nil then
else
if NLW2[1] == true then
WHC625()
end
if NLW2[2] == true then
WHC636()
end
if NLW2[3] == true then
WHC660()
end
if NLW2[4] == true then
WHC665()
end
if NLW2[5] == true then
WHC662()
end
if NLW2[6] == true then
WHC675()
end
if NLW2[7] == true then
WHC678()
end
if NLW2[8] == true then
WHC710()
end
if NLW2[9] == true then
WHC712()
end
if NLW2[10] == true then
WHC720()
end
if NLW2[11] == true then
WHC730()
end
if NLW2[12] == true then
WHC820()
end
if NLW2[13] == true then
WHC835()
end
if NLW2[14] == true then
WHC845()
end
if NLW2[15] == true then
WHC855()
end
if NLW2[16] == true then
HOME()
end
NLWGAMING = -1
end
end

function WHC625()
CL625 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳 】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL625 == nil then
else
if CL625[1] == true then
C6251()
end
if CL625[2] == true then
C6252()
end
if CL625[3] == true then
C6253()
end
if CL625[4] == true then
C6254()
end
if CL625[5] == true then
HOME()
end
NLWGAMING = -1
end
end

function C6251()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.24207754e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(16)
gg.editAll("120", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.36311631e-44;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(155)
gg.editAll("120", gg.TYPE_FLOAT)
gg.processResume()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6252()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.24207754e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(16)
gg.editAll("120", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.36311631e-44;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(155)
gg.editAll("120", gg.TYPE_FLOAT)
gg.processResume()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6253()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults(1048576)
gg.toast("𝟼𝟸𝟻 ʀᴇᴅ ✓")
end

function C6254()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("589,827;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝟼𝟸𝟻 ʏᴇʟʟᴏᴡ ✓")
end

function WHC636()
CL636 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL636 == nil then
else
if CL636[1] == true then
C6361()
end
if CL636[2] == true then
C6362()
end
if CL636[3] == true then
C6363()
end
if CL636[4] == true then
C6364()
end
if CL636[5] == true then
HOME()
end
NLWGAMING = -1
end
end

function C6361()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.24207754e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(16)
gg.editAll("120", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.36311631e-44;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(155)
gg.editAll("120", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.searchNumber("537133071;8200;1075317248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6362()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.24207754e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(16)
gg.editAll("120", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.36311631e-44;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(155)
gg.editAll("120", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.searchNumber("537133071;8200;1075317248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6363()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("768;32769;-2134900717", gg.TYPE_DWORD)
gg.refineNumber("32769", gg.TYPE_DWORD)
gg.getResults(63825)
gg.editAll("10", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("0;32770;-2134900716", gg.TYPE_DWORD)
gg.refineNumber("32770", gg.TYPE_DWORD)
gg.getResults(63825)
gg.editAll("5", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD)
gg.refineNumber("8200", gg.TYPE_DWORD)
gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝟼𝟹𝟼 ʀᴇᴅ ✓")
end

function C6364()
gg.clearResults()
gg.searchNumber("537133071;8200;1075317248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝟼𝟹𝟼 ʏᴇʟʟᴏᴡ ✓")
end

function WHC660()
CL660 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL660 == nil then
else
if CL660[1] == true then
C6601()
end
if CL660[2] == true then
C6602()
end
if CL660[3] == true then
C6603()
end
if CL660[4] == true then
C6604()
end
if CL660[5] == true then
HOME()
end
NLWGAMING = -1
end
end

function C6601()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.10788899e-39;4.63949121e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.65883891e-39;4.02319332e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6602()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.24207754e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(16)
gg.editAll("120", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.36311631e-44;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(155)
gg.editAll("120", gg.TYPE_FLOAT)
gg.processResume()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6603()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("589,827;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("660 ʀᴇᴅ ✓")
end

function C6604()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("589,827;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("660 ʏᴇʟʟᴏᴡ ✓")
end

function WHC665()
CL665 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝙶𝚁𝙴𝙽𝙽】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL665 == nil then
else
if CL665[1] == true then
C6651()
end
if CL665[2] == true then
C6652()
end
if CL665[3] == true then
C6653()
end
if CL665[4] == true then
C6654()
end
if CL665[5] == true then
C6655()
end
if CL665[6] == true then
HOME()
end
NLWGAMING = -1
end
end

function C6651()
gg.setRanges(1048576)
gg.searchNumber('2', 16)
gg.refineAddress('4E8', -1, 16)
gg.refineNumber('2', 16)
gg.getResults(gg.getResultsCount())
gg.editAll('100', 16)
gg.clearResults()
gg.searchNumber('2', 16)
gg.refineAddress('AB0', -1, 16)
gg.refineNumber('2', 16)
gg.getResults(gg.getResultsCount())
gg.editAll('100', 16)
gg.clearResults()
gg.searchNumber('4.5921952e-41', 16)
gg.refineAddress('980', -1, 16)
gg.refineNumber('4.5921952e-41', 16)
gg.getResults(gg.getResultsCount())
gg.editAll('4.5935965e-41', 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5129680411722522633", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("5129680411722514439", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6652()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("4.98062766e21;7.17464814e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.02041315e-39;2.02040894e-39;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('4.5921952e-41', 16)
gg.refineAddress('980', -1, 16)
gg.refineNumber('4.5921952e-41', 16)
gg.getResults(gg.getResultsCount())
gg.editAll('4.5935965e-41', 16)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6653()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("589,827;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝟼𝟼𝟻 ʀᴇᴅ ✓")
end

function C6654()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("589,827;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝟼𝟼𝟻 ʏᴇʟʟᴏᴡ ✓")
end

function C6654()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("768;32769;-2134900717", gg.TYPE_DWORD)
gg.refineNumber("32769", gg.TYPE_DWORD)
gg.getResults(63825)
gg.editAll("10", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("0;32770;-2134900716", gg.TYPE_DWORD)
gg.refineNumber("32770", gg.TYPE_DWORD)
gg.getResults(63825)
gg.editAll("5", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD)
gg.refineNumber("8200", gg.TYPE_DWORD)
gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ɢʀᴇᴇɴ 665✓")
end

function WHC662()
nlw662 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚆𝙷𝙸𝚃𝙴】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if nlw662 == nil then
else
if nlw662[1] == true then
C6621()
end
if nlw662[2] == true then
C6622()
end
if nlw662[3] == true then
C6623()
end
if nlw662[4] == true then
C6624()
end
if nlw662[5] == true then
HOME()
end
NLWGAMING = -1
end
end


function C6621()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.25000238419;2.0;1.66230384e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("50331648;0;4611686018427387904;-4647714814372610048;3212836864;4575657221408423936:77", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("-4647714814372610048", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000)
gg.editAll("-4647714814322147328", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("𝚆𝙰𝙻𝙻 662✓")
end

function C6622()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1194347290;8200:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(5)
gg.editAll("7", gg.TYPE_DWORD)
gg.processResume()
gg.clearResults()
gg.toast("𝚁𝙴𝙳 662✓")
end

function C6623()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1194347290;8200:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(5)
gg.editAll("6", gg.TYPE_DWORD)
gg.processResume()
gg.clearResults()
gg.toast("𝚈𝙴𝙻𝙻𝙾𝚆 662✓")
end

function C6624()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1194347290;8200:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(5)
gg.editAll("5", gg.TYPE_DWORD)
gg.processResume()
gg.clearResults()
gg.toast("𝚆𝙷𝙸𝚃𝙴 662✓")
end

function WHC675()
CL675 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL675 == nil then
else
if CL675[1] == true then
C6751()
end
if CL675[2] == true then
C6752()
end
if CL675[3] == true then
C6753()
end
if CL675[4] == true then
C674()
end
if CL675[5] == true then
HOME()
end
NLWGAMING = -1
end
end

function C6751()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("4.98062766e21;7.17464814e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.02041315e-39;2.02040894e-39;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('4.5921952e-41', 16)
gg.refineAddress('980', -1, 16)
gg.refineNumber('4.5921952e-41', 16)
gg.getResults(gg.getResultsCount())
gg.editAll('4.5935965e-41', 16)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("589,827;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("589,827;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6752()
gg.setRanges(1048576)
gg.searchNumber('2', 16)
gg.refineAddress('4E8', -1, 16)
gg.refineNumber('2', 16)
gg.getResults(gg.getResultsCount())
gg.editAll('100', 16)
gg.clearResults()
gg.searchNumber('2', 16)
gg.refineAddress('AB0', -1, 16)
gg.refineNumber('2', 16)
gg.getResults(gg.getResultsCount())
gg.editAll('100', 16)
gg.clearResults()
gg.searchNumber('4.5921952e-41', 16)
gg.refineAddress('980', -1, 16)
gg.refineNumber('4.5921952e-41', 16)
gg.getResults(gg.getResultsCount())
gg.editAll('4.5935965e-41', 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5129680411722522633", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("5129680411722514439", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6753()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("589,827;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("675 ʀᴇᴅ ✓")
end

function C674()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("589,827;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("675 ʏᴇʟʟᴏᴡ✓")
end

function WHC678()
CL678 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL678 == nil then
else
if CL678[1] == true then
C6781()
end
if CL678[2] == true then
C6782()
end
if CL678[3] == true then
C6783()
end
if CL678[4] == true then
C6784()
end
if CL678[5] == true then
HOME()
end
NLWGAMING = -1
end
end

function C6781()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.0;1.66230384e-19;3.58732407e-43;1.01020447e-39:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(6)
gg.editAll("130", gg.TYPE_FLOAT)
gg.processResume()
gg.refineNumber("2.0;0.24022650719;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("3.36311631e-44;1.12020327e-19;3.76158192e-37;2.0:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(6)
gg.editAll("130", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200;1669333003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(2)
gg.editAll("5", gg.TYPE_DWORD)
gg.processResume()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6782()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.0;1.66230384e-19;3.58732407e-43;1.01020447e-39:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(6)
gg.editAll("130", gg.TYPE_FLOAT)
gg.processResume()
gg.refineNumber("2.0;0.24022650719;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("3.36311631e-44;1.12020327e-19;3.76158192e-37;2.0:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(6)
gg.editAll("130", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200;1669333003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(2)
gg.editAll("5", gg.TYPE_DWORD)
gg.processResume()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6783()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200;1669333003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(2)
gg.editAll("6", gg.TYPE_DWORD)
gg.processResume()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C6784()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200;1669333003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(2)
gg.editAll("5", gg.TYPE_DWORD)
gg.processResume()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function WHC710()
CL710 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL710 == nil then
else
if CL710[1] == true then
C7101()
end
if CL710[2] == true then
C7102()
end
if CL710[3] == true then
C7103()
end
if CL710[4] == true then
C7104()
end
if CL710[5] == true then
HOME()
end
NLWGAMING = -1
end
end

function C7101()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("4.98062766e21;7.17464814e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.02041315e-39;2.02040894e-39;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C7102()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("4.98062766e21;7.17464814e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.02041315e-39;2.02040894e-39;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C7103()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD)
gg.refineNumber("8200", gg.TYPE_DWORD)
gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("710 ʀᴇᴅ✓")
end

function C7104()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8.2676609e-44;1.3912565e-19f;2.0", gg.TYPE_FLOAT)
gg.searchNumber("8.2676609e-44;1.3912565e-19f;2.0", gg.TYPE_FLOAT)
gg.refineNumber("2", gg.TYPE_FLOAT)
gg.getResults(6000)
gg.editAll("120", gg.TYPE_FLOAT)
gg.searchNumber("3.7615819e-37;1.1202056e-19;2.0", gg.TYPE_FLOAT)
gg.searchNumber("3.7615819e-37;1.1202056e-19;2.0", gg.TYPE_FLOAT)
gg.refineNumber("2", gg.TYPE_FLOAT)
gg.processResume()
gg.getResults(6000)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("710 ʏᴇʟʟᴏᴡ ✓")
end

function WHC712()
CL712 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 】",
"🇳 🇱 🇼【𝙲𝙻𝙾𝚁 𝙶𝚁𝙴𝙽𝙽】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁  𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL712 == nil then
else
if CL712[1] == true then
C7121()
end
if CL712[2] == true then
C7122()
end
if CL712[3] == true then
C7123()
end
if CL712[4] == true then
C7124()
end
if CL712[5] == true then
HOME()
end
NLWGAMING = -1
end
end

function C7121()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("4.98062766e21;7.17464814e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.02041315e-39;2.02040894e-39;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C7122()
if gg.REGION_VIDEO == nil then
VB = gg.REGION_BAD
else
VB = gg.REGION_VIDEO
end
gg.setRanges(VB)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD)
gg.searchNumber("8201", gg.TYPE_DWORD)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("712 ɢʀᴇᴇɴ ✓")
end

function C7123()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;1194344459;8201;1194346792", gg.TYPE_DWORD)
gg.refineNumber("8200", gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("8199", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("712 ʀᴇᴅ✓")
end

function C7124()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD)
gg.refineNumber("8200;8201", gg.TYPE_DWORD)
gg.getResults(63825)
gg.editAll("6;7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("712 ʏᴇʟʟᴏᴡ ✓")
end

function WHC720()
CL720 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙲𝙾𝙻𝙾𝚁 𝚅1 750G】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙲𝙾𝙻𝙾𝚁 𝚅2 750G】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL720 == nil then
else
if CL720[1] == true then
C7201()
end
if CL720[2] == true then
C7202()
end
if CL720[3] == true then
W750G()
end
if CL720[4] == true then
WV750G()
end
if CL720[5] == true then
C7204()
end
if CL720[6] == true then
HOME()
end
NLWGAMING = -1
end
end

function C7201()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("4.98062766e21;7.17464814e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.02041315e-39;2.02040894e-39;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("8201;1441795;1074790401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C7202()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("4.98062766e21;7.17464814e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.02041315e-39;2.02040894e-39;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function W750G()
gg.searchNumber("2.37549066544;4.63949121e-29;2.25000238419;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("3.36311631e-44;1.12020327e-19;3.76158192e-37;2.0:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("color 750G NLWGAMING")
end

function WV750G()
gg.searchNumber("2.37549066544;4.63949121e-29;2.25000238419;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("3.36311631e-44;1.12020327e-19;3.76158192e-37;2.0:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall color 750G NLWGAMING✓")
end

function C7204()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("8201;1441795;1074790401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" 720 ʏᴇʟʟᴏᴡ ✓")
end

function WHC730()
CL730 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙲𝙾𝙻𝙾𝚁 𝚅1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙲𝙾𝙻𝙾𝚁 𝚅2】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙲𝙾𝙻𝙾𝚁 𝚅3】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙲𝙾𝙻𝙾𝚁 𝚅4】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL730 == nil then
else
if CL730[1] == true then
C7301()
end
if CL730[2] == true then
C7302()
end
if CL730[3] == true then
W730()
end
if CL730[4] == true then
WV730()
end
if CL730[5] == true then
C7304()
end
if CL730[6] == true then
HOME()
end
NLWGAMING = -1
end
end

function C7301()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("4.98062766e21;7.17464814e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.02041315e-39;2.02040894e-39;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("8201;1441795;1074790401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C7302()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("4.98062766e21;7.17464814e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.02041315e-39;2.02040894e-39;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function W730()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.60447509e-29;1.12020327e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.19485322e-19;4.00840248e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("color 730 NLWGAMING")
end

function WV730()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.60447509e-29;1.12020327e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.19485322e-19;4.00840248e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall color 730 NLWGAMING✓")
end

function C7304()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("8201;1441795;1074790401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" 730 ʏᴇʟʟᴏᴡ ✓")
end

function WHC820()
CL820 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL820 == nil then
else
if CL820[1] == true then
C8201()
end
if CL820[2] == true then
C8202()
end
if CL820[3] == true then
C8203()
end
 if CL820[4] == true then
C8204()
end
if CL820[5] == true then
HOME()
end
NLWGAMING = -1
end
end

function C8201()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.60447509e-29;1.12020327e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.19485322e-19;4.00840248e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C8202()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.60447509e-29;1.12020327e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.19485322e-19;4.00840248e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C8203()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ʀᴇᴅ 820 ✓")
end

function C8204()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("8201;1441795;1074790401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ʏᴇʟʟᴏᴡ 820 ✓")
end

function WHC835()
CL835 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL835 == nil then
else
if CL835[1] == true then
C8351()
end
if CL835[2] == true then
C8352()
end
if CL835[3] == true then
C8353()
end
 if CL835[4] == true then
C8354()
end
if CL835[5] == true then
HOME()
end
NLWGAMING = -1
end
end

function C8351()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.60447509e-29;1.12020327e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.19485322e-19;4.00840248e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C8352()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.60447509e-29;1.12020327e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.19485322e-19;4.00840248e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C8353()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ʀᴇᴅ 835 ✓")
end

function C8354()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("8201;1441795;1074790401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ʏᴇʟʟᴏᴡ 835 ✓")
end

function WHC845()
CL845 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝙶𝚁𝙴𝙽𝙽 𝙱𝙾𝙳𝚈】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳 𝙱𝙾𝙳𝚈】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝙱𝙻𝚄𝙴 𝙱𝙾𝙳𝚈】",
 "🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL845 == nil then
else
if CL845[1] == true then
C8451()
end
if CL845[2] == true then
C8452()
end
if CL845[3] == true then
C8453()
end
if CL845[4] == true then
C8454()
end
if CL845[5] == true then
C8455()
end
if CL845[6] == true then
HOME()
end
NLWGAMING = -1
end
end

function C8451()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.60447509e-29;1.12020327e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.19485322e-19;4.00840248e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C8452()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Green 845✓")
end

function C8453()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("8201;1441795;1074790401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ʏᴇʟʟᴏᴡ 845 ✓")
end

function C8454()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("8201;1441795;1074790401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ʀᴇᴅ 845 ✓")
end

function C8455()
gg.clearResults()
gg.searchNumber("8201", gg.TYPE_DWORD)
gg.refineAddress("0F8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("8198", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Blue 845 ✓")
end

function WHC855()
CL855 = gg.multiChoice({
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 1】",
"🇳 🇱 🇼【𝚆𝙰𝙻𝙻 𝙷𝙰𝙲𝙺 2】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚈𝙴𝙻𝙻𝙾𝚆】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝚁𝙴𝙳】",
"🇳 🇱 🇼【𝙲𝙾𝙻𝙾𝚁 𝙱𝙻𝚄𝙴】",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if CL855 == nil then
else
if CL855[1] == true then
C8551()
end
if CL855[2] == true then
C8552()
end
if CL855[3] == true then
C8553()
end
if CL855[4] == true then
C8554()
end
if CL855[5] == true then
C8555()
end
if CL855[6] == true then
HOME()
end
NLWGAMING = -1
end
end

function C8551()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.60447509e-29;1.12020327e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.19485322e-19;4.00840248e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C8552()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.60447509e-29;1.12020327e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.19485322e-19;4.00840248e-29;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Wallhack Done[ᴍʀɴʟᴡ⚚]ɴʟᴡɢᴍᴀɪɴɢ™")
gg.setVisible(false)
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("048", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝙽𝙻𝚆𝙶𝙰𝙼𝙸𝙽𝙶")
end

function C8553()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("536887318;537133066;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("8201;1441795;1074790401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ʏᴇʟʟᴏᴡ855 ✓")
end

function C8554()
gg.setRanges(gg.REGION_VIDEO)
gg.setVisible(false)
gg.searchNumber("8201;1441795;1074790401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2)
gg.editAll("2", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ʀᴇᴅ 855 ✓")
end

function C8555()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Blue 845 ✓")
end

function By()
nlwteam = gg.multiChoice({
"▄︻̷̿┻̿═━一 𝙱𝚈𝙿𝙰𝚂𝚂 𝙺𝚁&𝙶𝙻 1",
"▄︻̷̿┻̿═━一 𝙱𝚈𝙿𝙰𝚂𝚂 𝙺𝚁&𝙶𝙻 2",
"▄︻̷̿┻̿═━一 𝙱𝚈𝙿𝙰𝚂𝚂 𝙺𝚁&𝙶𝙻 3",
"▄︻̷̿┻̿═━一 𝙱𝚈𝙿𝙰𝚂𝚂 𝙰𝙻𝙻 𝚅𝙴𝚁𝚂𝙸𝙾𝙽 𝙿𝙶4",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if nlwteam == nil then
else
if nlwteam[1] == true then
J1()
end 
if nlwteam[2] == true then
J2()
end 
if nlwteam[3] == true then
J3()
end 
if nlwteam[4] == true then
J4()
end 
if nlwteam[5] == true then
HOME()
end 
end 
NLWGAMING = -1
end 

function J1()
local NLW = gg
NLW.alert("👉BYPASS OPEN GL&KR V1 NLW👈")
NLW.clearResults()
NLW.searchNumber("577252194516992;288233678981562368")
NLW.refineNumber("577252194516992")
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("620137442967552")
NLW.refineNumber("620137442967552")
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("620137442967552")
NLW.refineNumber("620137442967552")
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("578351706144768;564058054983680")
NLW.refineNumber("578351706144768")
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("909391408", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("1089886885", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("909391408", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("1089886885", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("196,864;16,842,753::5", NLW.TYPE_DWORD, false, NLW.SIGN_EQUAL, 0, -1)
NLW.refineNumber("196,864", 4)
NLW.getResults(50000)
NLW.editAll("84,149,249", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("67,109,377;16,384", NLW.TYPE_DWORD, false, NLW.SIGN_EQUAL, 0, -1)
NLW.refineNumber("16384", 4)
NLW.getResults(50000)
NLW.editAll("84,149,249", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("131,330;134,658", NLW.TYPE_DWORD, false, NLW.SIGN_EQUAL, 0, -1)
NLW.refineNumber("134,658", 4)
NLW.getResults(50000)
NLW.editAll("84,149,249", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("4,096;135,682", NLW.TYPE_DWORD, false, NLW.SIGN_EQUAL, 0, -1)
NLW.refineNumber("4,096", 4)
NLW.getResults(50000)
NLW.editAll("84,149,249", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("134,402;67,109,377", NLW.TYPE_DWORD, false, NLW.SIGN_EQUAL, 0, -1)
NLW.refineNumber("134,402", 4)
NLW.getResults(50000)
NLW.editAll("84,149,249", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("134,658;134,658", NLW.TYPE_DWORD, false, NLW.SIGN_EQUAL, 0, -1)
NLW.refineNumber("134,658", 4)
NLW.getResults(50000)
NLW.editAll("84,149,249", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("131,842;133,635", NLW.TYPE_DWORD, false, NLW.SIGN_EQUAL, 0, -1)
NLW.refineNumber("131,842", 4)
NLW.getResults(50000)
NLW.editAll("84,149,249", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("133,634;135,682", NLW.TYPE_DWORD, false, NLW.SIGN_EQUAL, 0, -1)
NLW.refineNumber("133,634", 4)
NLW.getResults(50000)
NLW.editAll("84,149,249", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("133,378;144,387", NLW.TYPE_DWORD, false, NLW.SIGN_EQUAL, 0, -1)
NLW.refineNumber("133,378", 4)
NLW.getResults(50000)
NLW.editAll("84,149,249", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("133634;133890", NLW.TYPE_DWORD)
NLW.refineNumber("133634", 4)
NLW.getResults(50000)
NLW.editAll("133890", NLW.TYPE_DWORD)
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("133634;134658", NLW.TYPE_DWORD, false, NLW.SIGN_EQUAL, 0, -1)
NLW.refineNumber("133634", 4, false, 536870912, 0, -1, 0)
NLW.getResults(50000)
NLW.editAll("133890", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.toast("[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸 ɴʟᴡɢᴍᴀɪɴɢ™")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.alert("BYPASS 👉GL&KR V1 NLWGAMING")
end

function J2()
local NLW = gg
NLW.alert("👉BYPASS OPEN KR&GL V2 NLW👈")
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("620137442967552;564058054983680", NLW.TYPE_QWORD)
NLW.refineNumber("620137442967552", NLW.TYPE_QWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("578351706144768;564058054983680", NLW.TYPE_QWORD)
NLW.refineNumber("578351706144768", NLW.TYPE_QWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("577252194516992;288233678981562368", NLW.TYPE_QWORD)
NLW.refineNumber("577252194516992", NLW.TYPE_QWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("131330;134914", NLW.TYPE_DWORD)
NLW.refineNumber("131330", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("134658;133634", NLW.TYPE_DWORD)
NLW.refineNumber("134658", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("134402;131586", NLW.TYPE_DWORD)
NLW.refineNumber("134402", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("133634;133378", NLW.TYPE_DWORD)
NLW.refineNumber("133634", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.toast("[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸 ɴʟᴡɢᴍᴀɪɴɢ™")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹??🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.alert("BYPASS 👉KR&GL V2 NLW GAMING")
end

function J3()
local NLW = gg
NLW.alert("👉BYPASS OPEN KR&GL V3 NLW👈")
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("620137442967552;564058054983680", NLW.TYPE_QWORD)
NLW.refineNumber("620137442967552", NLW.TYPE_QWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("578351706144768;564058054983680", NLW.TYPE_QWORD)
NLW.refineNumber("578351706144768", NLW.TYPE_QWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("577252194516992;288233678981562368", NLW.TYPE_QWORD)
NLW.refineNumber("577252194516992", NLW.TYPE_QWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("133634;133890", NLW.TYPE_DWORD)
NLW.refineNumber("133634", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("133890", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("133634;133890", NLW.TYPE_DWORD)
NLW.refineNumber("133634", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("133890", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("196864;16842753::5", NLW.TYPE_DWORD)
NLW.refineNumber("196864", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("84149249", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("16384;67109377", NLW.TYPE_DWORD)
NLW.refineNumber("16384", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("84149249", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("4096;135682", NLW.TYPE_DWORD)
NLW.refineNumber("4096", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("84149249", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("134402;67109377", NLW.TYPE_DWORD)
NLW.refineNumber("134402", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("84149249", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("134658;134658", NLW.TYPE_DWORD)
NLW.refineNumber("134658", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("84149249", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("133634;135682", NLW.TYPE_DWORD)
NLW.refineNumber("133634", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("84149249", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("133634;135682", NLW.TYPE_DWORD)
NLW.refineNumber("133634", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("84149249", NLW.TYPE_DWORD)
NLW.clearResults()
NLW.toast("[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸 ɴʟᴡɢᴍᴀɪɴɢ™")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.alert("👉BYPASS OPEN KR&GL V3 NLW👈")
end

function J4()
local NLW = gg
NLW.alert("👉BYPASS OPEN VNG+BGM V4 NLW👈")
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("620137442967552;564058054983680", NLW.TYPE_QWORD)
NLW.refineNumber("620137442967552", NLW.TYPE_QWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("578351706144768;564058054983680", NLW.TYPE_QWORD)
NLW.refineNumber("578351706144768", NLW.TYPE_QWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC | NLW.REGION_OTHER)
NLW.searchNumber("577252194516992;288233678981562368", NLW.TYPE_QWORD)
NLW.refineNumber("577252194516992", NLW.TYPE_QWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("131330;134914", NLW.TYPE_DWORD)
NLW.refineNumber("131330", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("134658;133634", NLW.TYPE_DWORD)
NLW.refineNumber("134658", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("134402;131586", NLW.TYPE_DWORD)
NLW.refineNumber("134402", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.setRanges(NLW.REGION_C_ALLOC)
NLW.searchNumber("133634;133378", NLW.TYPE_DWORD)
NLW.refineNumber("133634", NLW.TYPE_DWORD)
NLW.getResults(50000)
NLW.editAll("288233678981562368", NLW.TYPE_QWORD)
NLW.clearResults()
NLW.toast("[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸 ɴʟᴡɢᴍᴀɪɴɢ™")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸??ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸??🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.toast(" 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸 ")
NLW.sleep(200)
NLW.toast("🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹 🔸🔹🔸[ᴍʀɴʟᴡ⚚]🔹🔸🔹🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸🔹🔸🔹ɴʟᴡɢᴍᴀɪɴɢ™🔸🔹🔸")
NLW.sleep(200)
NLW.alert("BYPASS 👉VNG+BGM V4 NLW GAMING")
end

function dd()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value)xs={}xs[1]={}xs[1].address=address xs[1].flags=flags xs[1].value=value gg.setValues(xs)end
function setvalue(address,flags,value) local xx={} xx[1]={} xx[1].address=address xx[1].flags=flags xx[1].value=value gg.setValues(xx) end
so=gg.getRangesList("libUE4.so")[1].start
py=0x9D9C7A8
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x9D9B2C8
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x9D9B1D8
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x365D0780
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x365D0784
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x9D9CF7C
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x9D9CCDC
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x365D03E0
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x2C8353A8
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x2C835228
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x9D9B138
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x9D9C3E8
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x9D9C41C
setvalue(so+py,4,0)
gg.toast("ofline fix nlwgaming")
end

function mn()
NLW9 = gg.multiChoice({
"▄︻̷̿┻̿═━一 𝙺𝙽𝙾𝙲𝙺 𝚂𝙿𝙴𝙴𝙳 𝙾𝙽",
"▄︻̷̿┻̿═━一 𝙺𝙽𝙾𝙲𝙺 𝚂𝙿𝙴𝙴𝙳 𝙾𝙵𝙵",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW9 == nil then
else
if NLW9[1] == true then
kks1()
end
if NLW9[2] == true then
kks2()
end
if NLW9[3] == true then
HOME()
end
NLWGAMING = -1
end
end

function kks1()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libUE4.so')[1].start
py=0x11A7590
setvalue(so+py,16,-2.73959308e28)
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏")
gg.toast("𝚂𝚙𝚎𝚎𝚍 𝙽𝙻𝚆 𝙾𝙽 ✔️️")
end

function kks2()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libUE4.so')[1].start
py=0x11A7590
setvalue(so+py,16,-2.73959284e28)
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏")
gg.toast("𝚂𝚙𝚎𝚎𝚍 𝙽𝙻𝚆 𝙾𝚏𝚏 ❌")
end

function td()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10.0;46.0;45.0;45.0;10.0;46.0;135.0;135.0;10.0;46.0;225.0;225.0;10.0;46.0::185",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("3rd fix nlwgaming")
end

function C16()
C665 = gg.multiChoice({"🇳 🇱 🇼C 665 Green",
"🇳 🇱 🇼C 665 Red",
"🇳 🇱 🇼C 665 Yellow",
"🇳 🇱 🇼C 665 Blue",
"🇳 🇱 🇼C 665 Red HDR",
"🇳 🇱 🇼C 665 Purple",
"🇳 🇱 🇼C 665 White",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if C665 == nil then
else
if C665[1] == true then
G665()
end 
if C665[2] == true then
R665()
end 
if C665[3] == true then
Y665()
end 
if C665[4] == true then
B665()
end 
if C665[5] == true then
RH665()
end 
if C665[6] == true then
P665()
end 
if C665[7] == true then
W665()
end 
if C665[8] == true then
WC()
end 
end 
NLWGAMING = -1
end 

function G665()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;8201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2805)
gg.editAll("9;5", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.665 Green NLW GAMING ")
end 

function R665()
gg.clearResults()
gg.searchNumber('"8196D;8192D;8200D"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('"7"', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.665 Red NLW GAMING ")
end 

function Y665()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;8201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2905)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.665 Yellow NLW GAMING ")
end 

function B665()
gg.clearResults()
gg.searchNumber("8200;1194344475;8201", 4, false, 536870912, -0, -1)
gg.processResume()
gg.refineNumber("8200;8201", 4, false, 536870912, -0, -1)
gg.processResume()
gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("7", 4)
gg.processResume()
gg.toast("C.665 Blue NLW GAMING ")
end 

function RH665()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;1194380080;1081081856;1344471040;2818062;281284803:145", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.665 Red Hdr NLW GAMING ")
end 

function P665()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1194344485;8202;1669332996:73", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.processResume()
gg.refineNumber("8202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537137162;8200;1074790400;1938276359:73", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.processResume()
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("7", gg.TYPE_DWORD)
gg.processResume()
gg.clearResults()
gg.toast("C.665 Purple NLW GAMING ")
end 

function W665()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201;1,194,379,823;1,376,258;1,310,723:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(20)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.665 White NLW GAMING ")
end 

function kambing()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("1.1754945e-37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(1000)
gg.editAll("1.1754945e-37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.clearResults()
gg.toast("By NLW GAMING")
end 

function C17()
C675 = gg.multiChoice({"🇳 🇱 🇼C 675 Yellow",
"🇳 🇱 🇼C 675 Red",
"🇳 🇱 🇼C 675 Blue",
"🇳 🇱 🇼C 675 Green",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if C675 == nil then
else
if C675[1] == true then
Y675()
end 
if C675[2] == true then
R675()
end 
if C675[3] == true then
B675()
end 
if C675[4] == true then
G675()
end 
if C675[5] == true then
WC()
end 
end 
NLWGAMING = -1
end 

function Y675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1194344459;8201;1194344485:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(600)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.refineAddress("100", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, -0, -1)
gg.getResults(100)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.675 Yellow NLW GAMING ")
end 

function R675()
gg.clearResults()
gg.searchNumber("8,200;1,101,004,840;2,097,154;1,661,911,061;2,162,708;1,661,911,056:1109", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("C.675 Red NLW GAMING ")
end 

function B675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5,129,821,174,980,681,738", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.sleep(140)
gg.refineNumber("5,129,821,174,980,681,738", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.sleep(140)
gg.refineAddress("2D0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, -0, -1)
gg.refineNumber("5,129,821,174,980,681,738", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(1401)
gg.editAll("5,129,821,174,980,673,543", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("C.675 Blue NLW GAMING ")
end 

function G675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5,129,822,240,132,571,145", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.sleep(140)
gg.refineNumber("5,129,822,240,132,571,145", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.sleep(140)
gg.refineAddress("0D8", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, -0, -1)
gg.refineNumber("5,129,822,240,132,571,145", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(1)
gg.editAll("5,129,822,240,132,564,055", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5,129,822,240,132,571,145", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.sleep(140)
gg.refineNumber("5,129,822,240,132,571,145", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.sleep(140)
gg.refineAddress("0D8", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, -0, -1)
gg.refineNumber("5,129,822,240,132,571,145", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(1)
gg.editAll("5,129,822,240,132,564,055", gg.TYPE_QWORD)
gg.toast("C.675 Green NLW GAMING ")
gg.clearResults()
end 

function C18()
C710 = gg.multiChoice({"🇳 🇱 🇼C 710 Red",
"🇳 🇱 🇼C 710 Yellow",
"🇳 🇱 🇼C 710 Green",
"🇳 🇱 🇼C 710 Blue Sea",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if C710 == nil then
else
if C710[1] == true then
R710()
end 
if C710[2] == true then
Y710()
end 
if C710[3] == true then
G710()
end 
if C710[4] == true then
B710()
end 
if C710[5] == true then
WC()
end 
end 
NLWGAMING = -1
end 

function R710()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1703959D;8200D;8201D:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("C.710 Red NLW GAMING ")
end 

function Y710()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.getResults(63825)
gg.editAll("6;7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.710 Yellow NLW GAMING ")
end 

function G710()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.710 Green NLW GAMING ")
end 

function B710()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(15)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("C.710 Blue NLW GAMING ")
end 

function C19()
C712 = gg.multiChoice({"🇳 🇱 🇼C 712 Yellow",
"🇳 🇱 🇼C 712 Green",
"🇳 🇱 🇼C 712 Red",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if C712 == nil then
else
if C712[1] == true then
Y712()
end 
if C712[2] == true then
G712()
end 
if C712[3] == true then
R712()
end 
if C712[4] == true then
WC()
end 
end 
NLWGAMING = -1
end 

function Y712()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1703959D;8200D;8201D:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.refineNumber("1703959;8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(10)
gg.editAll("6;7;8199", gg.TYPE_DWORD)
gg.toast("C. 712 Yellow NLW GAMING ")
end 

function G712()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(999)
gg.editAll("8199", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C. 712 Green NLW GAMING ")
end 

function R712()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1,081,081,875D;8,200D;1,194,344,485D:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(100)
gg.editAll("13", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C. 712 Red NLW GAMING ")
end 

function C20()
C845 = gg.multiChoice({"🇳 🇱 🇼C 845 Yellow",
"🇳 🇱 🇼C 845 Red HDR",
"🇳 🇱 🇼C 845 Green HDR",
"🇳 🇱 🇼C 845 Blue Smooth",
"🇳 🇱 🇼C 845 Green Smooth",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if C845 == nil then
else
if C845[1] == true then
Y845()
end 
if C845[2] == true then
R845()
end 
if C845[3] == true then
G8452()
end 
if C845[4] == true then
B845()
end 
if C845[5] == true then
G845()
end 
if C845[6] == true then
WC()
end 
end 
NLWGAMING = -1
end 

function Y845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.getResults(63825)
gg.editAll("6;7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.845 Yellow NLW GAMING ")
end 

function R845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5129823416953610248", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(69)
gg.editAll("5129823416953610247", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("C.845 Red Hdr NLW GAMING ")
end 

function G8452()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5129823416953610248", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(69)
gg.editAll("5129823416953610246", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("C.845 Green Hdr NLW GAMING ")
end 

function B845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5129822240132571145", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(69)
gg.editAll("5129822240132571142", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("C.845 Blue NLW GAMING ")
end 

function G845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.845 Green NLW GAMING ")
end 

function C21()
C855 = gg.multiChoice({"🇳 🇱 🇼C 855 Red",
"🇳 🇱 🇼C 855 Yellow",
"🇳 🇱 🇼C 855 Green",
"🇳 🇱 🇼C 855 Blue",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if C855 == nil then
else
if C855[1] == true then
R855()
end 
if C855[2] == true then
Y855()
end 
if C855[3] == true then
G855()
end 
if C855[4] == true then
B855()
end 
if C855[5] == true then
WC()
end 
end 
NLWGAMING = -1
end 

function R855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.855 Red NLW GAMING ")
end 

function Y855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.getResults(63825)
gg.editAll("6;7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.855 Yellow NLW GAMING ")
end 

function G855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1, -0)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.855 Green NLW GAMING ")
end 

function B855()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.refineAddress("0A0")
gg.getResults(10)
gg.editAll("8198", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.855 Blue NLW GAMING ")
end 

function C22()
C865 = gg.multiChoice({"🇳 🇱 🇼C 865 Red",
"🇳 🇱 🇼C 865 Yellow",
"🇳 🇱 🇼C 865 Green",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if C865 == nil then
else
if C865[1] == true then
R865()
end 
if C865[2] == true then
Y865()
end 
if C865[3] == true then
G865()
end 
if C865[4] == true then
WC()
end 
end 
NLWGAMING = -1
end 

function R865()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.865 Red NLW GAMING ")
end 

function Y865()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,200;1,194,344,481;1,118,410;29:33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1,074,792,717;8,200;11;48:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.865 Yellow NLW GAMING ")
end 

function G865()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(100)
gg.editAll("8202", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("C.865 Green NLW GAMING ")
end 

function MHW()
NLWGAMING2 = gg.multiChoice({"▄︻̷̿┻̿═━一 𝙻𝙴𝚂𝚂 𝚁𝙴𝙲𝙾𝙸𝙻 𝚅1ɪsʟᴀɴᴅ/ɢᴀᴍᴇ",
"▄︻̷̿┻̿═━一 𝙽𝙾 𝚁𝙴𝙲𝙾𝙸𝙻 𝚅2ɪsʟᴀɴᴅ/ɢᴀᴍᴇ",
"▄︻̷̿┻̿═━一 𝙷𝚂 50 ɪsʟᴀɴᴅ/ɢᴀᴍᴇ",
"▄︻̷̿┻̿═━一 𝙷𝚒𝚐𝚑 𝙼𝚊𝚐𝚒𝚌 ɪsʟᴀɴᴅ/ɢᴀᴍᴇ",
"▄︻̷̿┻̿═━一 𝙷𝚂 100 𝙶𝙰𝙼𝙴 ɪsʟᴀɴᴅ/ɢᴀᴍ",
"▄︻̷̿┻̿═━一 𝚆𝙸𝙳𝙴 𝚅𝙸𝙴𝚆 ɪsʟᴀɴᴅ/ɢᴀᴍᴇ",
"▄︻̷̿┻̿═━一 𝙰𝙽𝚃𝙴𝙽𝙽𝙰 𝙷𝙰𝙲𝙺 ɪsʟᴀɴᴅ/ɢᴀᴍᴇ",
"▄︻̷̿┻̿═━一 𝙱𝙺𝙲𝙺 𝚂𝙺𝚈 ɪsʟᴀɴᴅ/ɢᴀᴍᴇ",
"▄︻̷̿┻̿═━一 𝙽𝙾 𝙵𝙾𝙶 & 𝙶𝚁𝙰𝚂𝚂 ɪsʟᴀɴᴅ/ɢᴀᴍᴇ",
"▄︻̷̿┻̿═━一 𝙷𝙸𝚃 𝙴𝙵𝙵𝙴𝙲𝚃 𝚇 ɪsʟᴀɴᴅ/ɢᴀᴍᴇ",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋??𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLWGAMING2 == nil then
else
if NLWGAMING2[1] == true then
mw1()
end 
if NLWGAMING2[2] == true then
mwv2()
end 
if NLWGAMING2[3] == true then
mw3()
end 
if NLWGAMING2[4] == true then
mw3v2()
end 
if NLWGAMING2[5] == true then
mw2()
end 
if NLWGAMING2[6] == true then
mw4()
end 
if NLWGAMING2[7] == true then
mw5()
end 
if NLWGAMING2[8] == true then
mw6()
end 
if NLWGAMING2[9] == true then
mw7()
end 
if NLWGAMING2[10] == true then
xx()
end 
if NLWGAMING2[11] == true then
HOME()
end 
end 
NLWGAMING = -1
end 

function mw1()
NLW11 = gg.multiChoice({
"▄︻̷̿┻̿═━一 𝙻𝙴𝚂𝚂 𝚁𝙴𝙲𝙾𝙸𝙻 𝙾𝚕𝚍 ",
"▄︻̷̿┻̿═━一 𝙻𝙴𝚂𝚂 𝚁𝙴𝙲𝙾𝙸𝙻 1𝚄𝙿𝙳𝙰𝚃𝙴 ",
"▄︻̷̿┻̿═━一 𝙻𝙴𝚂𝚂 𝚁𝙴𝙲𝙾𝙸𝙻 2𝚄𝙿𝙳𝙰𝚃𝙴 ",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW11 == nil then
else
if NLW11[1] == true then
lees1()
end
if NLW11[2] == true then
lees2()
end
if NLW11[3] == true then
lees3()
end
if NLW11[4] == true then
HOME()
end
NLWGAMING = -1
end
end

function lees1()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-309056968;-298841599;-309061060", gg.TYPE_DWORD)
gg.searchNumber("-298841599", gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏✅𝙴𝙲𝙾𝙸𝙻✅")
end

function lees2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,850,305,641", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1028443341;1090519040;1036831949;1097859072::33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300;305", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏✅𝙴𝙲𝙾𝙸𝙻✅")
end

function lees3()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-309056968;-298841599;-309061060", gg.TYPE_DWORD)
gg.searchNumber("-298841599", gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,850,305,641", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1028443341;1090519040;1036831949;1097859072::33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300;305", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏✅𝙴𝙲𝙾𝙸𝙻✅")
end

function mwv2()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C21938 
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B5D1D8 
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x13B5184 
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C21938 
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B5D1D8 
setvalue(so+py,16,0)
gg.alert("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 𝙴𝙲𝙾𝙸𝙻🇲🇲✓")
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 𝚁𝙴𝙲𝙾𝙸𝙻🇲🇲✓")
end

function mw3()
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to Open")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully Opened")else gg.toast(_on.."\nSuccessfully Opened")end end end--
function SearchWrite(Search, Write, Type)    gg.clearResults()    gg.setVisible(false)    gg.searchNumber(Search[1][1], Type)    local count = gg.getResultCount()    local result = gg.getResults(count)    gg.clearResults()    local data = {}     local base = Search[1][2]    if (count > 0) then        for i, v in ipairs(result) do            v.isUseful = true         end        for k=2, #Search do            local tmp = {}            local offset = Search[k][2] - base             local num = Search[k][1]                         for i, v in ipairs(result) do                tmp[#tmp+1] = {}                 tmp[#tmp].address = v.address + offset                  tmp[#tmp].flags = v.flags              end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do                if ( tostring(v.value) ~= tostring(num) ) then                    result[i].isUseful = false                 end            end        end        for i, v in ipairs(result) do            if (v.isUseful) then                data[#data+1] = v.address            end        end        if (#data > 0) then           local t = {}           local base = Search[1][2]           for i=1, #data do               for k, w in ipairs(Write) do                   offset = w[2] - base                   t[#t+1] = {}                   t[#t].address = data[i] + offset                   t[#t].flags = Type                   t[#t].value = w[1]                   if (w[3] == true) then                      local item = {}                       item[#item+1] = t[#t]                       item[#item].freeze = true                       gg.addListItems(item)                   end                                 end           end           gg.setValues(t)           gg.addListItems(t)        else            gg.toast("LUCIFER", false)            return false        end    else        gg.toast("Vᴀʟᴜᴇs Nᴏᴛ Fᴏᴜɴᴅ")        return false    end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] ..
"") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value) Ok('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.." 开启成功 "..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.." 开启成功 "..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.." 开启失败 ", false)  return false  end  else gg.toast(" 开启失败 ")  return false  end end
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
edit({
{gg.REGION_ANONYMOUS},
{"🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 HS 50🇲🇲%"},
{1091779028, gg.TYPE_DWORD},
{1102577664, 24, gg.TYPE_DWORD},
{1103626240, 28, gg.TYPE_DWORD},
{1106509824, 32, gg.TYPE_DWORD},
},
{
{0, 24, gg.TYPE_DWORD},
{1133903872, 28, gg.TYPE_DWORD}, 
{1133903872, 32, gg.TYPE_DWORD},
})
gg.clearResults()
edit({
{gg.REGION_ANONYMOUS},
{"🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 HS 50🇲🇲%"},
{-1028556113, gg.TYPE_DWORD},
{1099956224, 4, gg.TYPE_DWORD},
{1105199104, 8, gg.TYPE_DWORD},

},
{
{-1007681536, 4, gg.TYPE_DWORD},
{-1005846528, 8, gg.TYPE_DWORD}, 
})
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3152)
gg.editAll("9931", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 HS 50🇲🇲✓")
gg.toast("HS 50 NLW GAMlNG")
end

function mw3v2()
libBase(0x40541E0,16,60, " 𝙷𝚒𝚐𝚑 𝙼𝚊𝚐𝚒𝚌")
gg.alert("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 𝙷𝚒𝚐𝚑 𝙼𝚊𝚐𝚒𝚌🇲🇲✓")
gg.toast("𝙷𝚒𝚐𝚑 𝙼𝚊𝚐𝚒𝚌 NLW GAMlNG")
end

function mw2()
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to Open")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully Opened")else gg.toast(_on.."\nSuccessfully Opened")end end end--
function SearchWrite(Search, Write, Type)    gg.clearResults()    gg.setVisible(false)    gg.searchNumber(Search[1][1], Type)    local count = gg.getResultCount()    local result = gg.getResults(count)    gg.clearResults()    local data = {}     local base = Search[1][2]    if (count > 0) then        for i, v in ipairs(result) do            v.isUseful = true         end        for k=2, #Search do            local tmp = {}            local offset = Search[k][2] - base             local num = Search[k][1]                         for i, v in ipairs(result) do                tmp[#tmp+1] = {}                 tmp[#tmp].address = v.address + offset                  tmp[#tmp].flags = v.flags              end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do                if ( tostring(v.value) ~= tostring(num) ) then                    result[i].isUseful = false                 end            end        end        for i, v in ipairs(result) do            if (v.isUseful) then                data[#data+1] = v.address            end        end        if (#data > 0) then           local t = {}           local base = Search[1][2]           for i=1, #data do               for k, w in ipairs(Write) do                   offset = w[2] - base                   t[#t+1] = {}                   t[#t].address = data[i] + offset                   t[#t].flags = Type                   t[#t].value = w[1]                   if (w[3] == true) then                      local item = {}                       item[#item+1] = t[#t]                       item[#item].freeze = true                       gg.addListItems(item)                   end                                 end           end           gg.setValues(t)           gg.addListItems(t)        else            gg.toast("LUCIFER", false)            return false        end    else        gg.toast("Vᴀʟᴜᴇs Nᴏᴛ Fᴏᴜɴᴅ")        return false    end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] ..
"") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value) Ok('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.." 开启成功 "..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.." 开启成功 "..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.." 开启失败 ", false)  return false  end  else gg.toast(" 开启失败 ")  return false  end end
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
edit({
{gg.REGION_ANONYMOUS},
{"🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 HS 100🇲🇲%"},
{1091779028, gg.TYPE_DWORD},
{1102577664, 24, gg.TYPE_DWORD},
{1103626240, 28, gg.TYPE_DWORD},
{1106509824, 32, gg.TYPE_DWORD},
},
{
{0, 24, gg.TYPE_DWORD},
{1133903872, 28, gg.TYPE_DWORD}, 
{1133903872, 32, gg.TYPE_DWORD},
})
gg.clearResults()
edit({
{gg.REGION_ANONYMOUS},
{"🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 HS 100🇲🇲%"},
{-1028556113, gg.TYPE_DWORD},
{1099956224, 4, gg.TYPE_DWORD},
{1105199104, 8, gg.TYPE_DWORD},

},
{
{-1007681536, 4, gg.TYPE_DWORD},
{-1005846528, 8, gg.TYPE_DWORD}, 
})
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3152)
gg.editAll("9931", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 HS 100🇲🇲✓")
gg.toast("HS 100 NLW GAMlNG")
end 

function mw4()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.clearResults()
gg.searchNumber("360.0;0.00100000005;-9.38575022e22", gg.TYPE_FLOAT)
gg.refineNumber("360.0", gg.TYPE_FLOAT)
gg.getResults(2)
gg.editAll("260", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 Ipad🇲🇲✓")
gg.toast("Ipad View NLW GAMING ")
end 

function mw5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
safeantenvalue0 = gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Antena NLW GAMING ")
gg.setVisible(false)
end 

function mw6()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3EE65EC 
setvalue(so+py,16,-0.000006)
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 𝙱𝙺𝙲𝙺 𝚂𝙺𝚈🇲🇲✓")
end 

function mw7()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libUE4.so')[1].start
py=0x28456F8 
setvalue(so+py,16,0)
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 𝙽𝙾 𝙵𝙾𝙶 & 𝙶𝚁𝙰𝚂𝚂🇲🇲✓")
end 

function xx()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1b918c4 
setvalue(so+py,16,0)
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏 𝙷𝙸𝚃 𝙴𝙵𝙵𝙴𝙲𝚃 𝚇🇲🇲✓")
end 

function DT()
NLW1 = gg.multiChoice({
"▄︻̷̿┻̿═━一 𝚂𝙿𝙴𝙴𝙳 𝙾𝙽",
"▄︻̷̿┻̿═━一 𝚂𝙿𝙴𝙴𝙳 𝙾𝙵𝙵",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW1 == nil then
else
if NLW1[1] == true then
sd1()
end
if NLW1[2] == true then
sd2()
end
if NLW1[3] == true then
HOME()
end
NLWGAMING = -1
end
end

function sd1()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C80514
setvalue(so+py,16,0)
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏")
gg.toast("𝚂𝚙𝚎𝚎𝚍 𝙽𝙻𝚆 𝙾𝙽 ✔️️")
end

function sd2()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C80514
setvalue(so+py,16,-1.86389771e-20)
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏")
gg.toast("𝚂𝚙𝚎𝚎𝚍 𝙽𝙻𝚆 𝙾𝚏𝚏 ❌")
end

function jump()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5006313939071729664", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(30)
gg.editAll("5006313936970041344", gg.TYPE_QWORD)
gg.sleep(900)
gg.editAll("5006313939071729664", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("\n【𝙰𝚕𝚕 𝙲𝚊𝚛 𝙹𝚞𝚖𝚙 𝙽𝙻𝚆】✅")
end

function ws()
NLW10 = gg.multiChoice({
"▄︻̷̿┻̿═━一 𝚆𝚊𝚕𝚕𝚂𝚑𝚘𝚝 ",
"▄︻̷̿┻̿═━一 𝚆𝚊𝚕𝚕 𝙻𝚘𝚘𝚝",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW10 == nil then
else
if NLW10[1] == true then
ws1()
end
if NLW10[2] == true then
ws2()
end
if NLW10[3] == true then
HOME()
end
NLWGAMING = -1
end
end

function ws1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4848124999984742400", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏")
gg.toast("✅𝙰𝚌𝚝𝚒𝚟𝚎𝚍✅")
end

function ws2()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libUE4.so')[1].start
py=0x4996fac 
setvalue(so+py,16,0)
gg.toast("🇲🇲 𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆 𝐕𝐈𝐏")
gg.toast("✅𝙰𝚌𝚝𝚒𝚟𝚎𝚍✅")
end

function NLWMTK()
NLWMP90T = gg.multiChoice({
"🇳 🇱 🇼 WH + Colour V1",
"🇳 🇱 🇼 WH + Colour V2",
"🇳 🇱 🇼 WH + Colour G80",
"🇳 🇱 🇼 Colour G90T",
"🇳 🇱 🇼 Colour G80",
"🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"
}, nil, os.date(" ╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLWMP90T == nil then
else
if NLWMP90T[1] == true then
P901()
end  
if NLWMP90T[2] == true then
P902()
end  
if NLWMP90T[3] == true then
P903()
end  
if NLWMP90T[4] == true then
G901()
end  
if NLWMP90T[5] == true then
G802()
end  
if NLWMP90T[6] == true then
HOME()
end  
end  
NLWGAMING = -1
end  

function P901()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(10)
gg.editAll("36", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("6.5020249e-43;0.0;0.5;0.5;0.0;0.27913400531:360", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
n = gg.getResultCount()
jz = gg.getResults(n)
for i = 1, n do
gg.addListItems({[1] = {address = jz[i].address + -0,flags = 16,freeze = true,value = 2}})
end 
gg.clearResults()
gg.toast("️NLW GAMING")
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("40D;32D;16D;2D::53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("40", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("38", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("️NLW GAMING")
end 

function P902()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(10)
gg.editAll("36", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("6.5020249e-43;0.0;0.5;0.5;0.0;0.27913400531:360", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
n = gg.getResultCount()
jz = gg.getResults(n)
for i = 1, n do
gg.addListItems({[1] = {address = jz[i].address + -0,flags = 16,freeze = true,value = 2}})
end 
gg.clearResults()
gg.alert("NLW GAMING")
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("40D;32D;16D;2D::53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("40", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("38", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("NLW GAMING")
gg.alert("Telegram NLW GAMING")
end  

function P903()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.793662e-43;3.5873241e-43;1.1210388e-44;0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
var = gg.getResults(20)
gg.editAll("2", gg.TYPE_FLOAT)
var = gg.getResults(100)
var[1].value = 2
var[1].freeze = true
var[2].value = 2
var[2].freeze = true
var[3].value = 2
var[3].freeze = true
var[4].value = 2
var[4].freeze = true
var[5].value = 2
var[5].freeze = true
var[6].value = 2
var[6].freeze = true
var[7].value = 2
var[7].freeze = true
var[8].value = 2
var[8].freeze = true
var[9].value = 2
var[9].freeze = true
gg.addListItems(var)
gg.clearResults()
gg.toast("WH Mediatek G80")
gg.alert("Telegram NLW GAMING")
end

function G901()
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("40D;32D;16D;2D::53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("40", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("38", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("️NLW GAMING")
end 

function G802()
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("40D;32D;16D;2D::53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("40", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("38", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("️NLW GAMING")
end 

function SKIN()
NLW3 = gg.choice({
"▄︻̷̿┻̿═━一 ᴡᴇᴀᴘᴏɴꜱ ꜱᴋɪɴꜱ ",
"▄︻̷̿┻̿═━一 ᴏᴜᴛғɪᴛ ғᴜʟʟ sᴇᴛ",
" 🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲 "
}, nil, os.date("╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW3 == nil then
else
if NLW3 == 1 then
WP()
end
if NLW3 == 2 then
OS()
end
if NLW3 == 3 then
HOME()
end
end
NLWGAMING = -1
end

function OS()
NLW4 = gg.choice({
"▄︻̷̿┻̿═━一 ɢᴏʟᴅᴇɴ ᴘʜᴀʀᴀᴏʜ x-ꜱᴜɪᴛ",
"▄︻̷̿┻̿═━一 ʀᴀᴠᴀɴ x-sᴜɪᴛ",
"▄︻̷̿┻̿═━一 ᴍᴜᴍᴍʏ sᴜɪᴛ",
"▄︻̷̿┻̿═━一 s𝟼 sᴜɪᴛ",
"▄︻̷̿┻̿═━一 s𝟼 ʙᴜɴɴʏ sᴜɪᴛ",
"▄︻̷̿┻̿═━一 ʏᴇᴛɪ sᴜɪᴛ",
"▄︻̷̿┻̿═━一 ʟᴏʙsᴛᴇʀ sᴜɪᴛ",
"▄︻̷̿┻̿═━一 ᴘɪɴᴏᴄᴄʜɪᴏ sᴜɪᴛ",
" 🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"
}, nil, os.date("╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW4 == nil then
else
if NLW4 == 1 then
GL()
end
if NLW4 == 2 then
RA()
end
if NLW4 == 3 then
MU()
end
if NLW4 == 4 then
S6()
end
if NLW4 == 5 then
SB()
end
if NLW4 == 6 then
YS()
end
if NLW4 == 7 then
LS()
end
if NLW4 == 8 then
PS()
end
if NLW4 == 9 then
SKIN()
end
end
NLWGAMING = -1
end

function YS()
gg.clearResults()
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Yᴇᴛɪ Sᴜɪᴛ"
},
{
["value"] = 1400129,
["type"] = 4
},
{
["lv"] = 519,
["offset"] = 4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1405001,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{memory = 32},
{
name = "哥斯拉一级包"
},
{value = 501001, type = 4},
{
lv = 2101,
offset = 4,
type = 4
}
}
qmxg = {
{
value = 1501001051,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "二级包"
},
{value = 501002, type = 4},
{
lv = 9102,
offset = 4,
type = 4
}
}
qmxg = {
{
value = 1501002051,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "三级包"
},
{value = 501003, type = 4},
{
lv = 9103,
offset = 4,
type = 4
}
}
qmxg = {
{
value = 1501003051,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
gg.toast("✓ Yᴇᴛɪ Sᴜɪᴛ...!!!")
end

function LS()
gg.clearResults()
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Lᴏʙsᴛᴇʀ Sᴜɪᴛ"
},
{
["value"] = 1400129,
["type"] = 4
},
{
["lv"] = 519,
["offset"] = 4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1405401,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{memory = 32},
{
name = "哥斯拉一级包"
},
{value = 501001, type = 4},
{
lv = 2101,
offset = 4,
type = 4
}
}
qmxg = {
{
value = 1501001051,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "二级包"
},
{value = 501002, type = 4},
{
lv = 9102,
offset = 4,
type = 4
}
}
qmxg = {
{
value = 1501002051,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "三级包"
},
{value = 501003, type = 4},
{
lv = 9103,
offset = 4,
type = 4
}
}
qmxg = {
{
value = 1501003051,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
gg.toast("✓ Lᴏʙsᴛᴇʀ Sᴜɪᴛ...!!!")
end

function PS()
gg.setVisible(false)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "PINOCCHIO SET"
},
{
["value"] = 1400129,
["type"] = 4
},
{
["lv"] = 519,
["offset"] = 4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1405537,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Headgear"
},
{
["value"] = 502001,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1402464,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Headgear"
},
{
["value"] = 502002,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1402464,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Headgear"
},
{
["value"] = 502003,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1402464,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Headgear"
},
{
["value"] = 502004,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1402464,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Headgear"
},
{
["value"] = 502005,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1402464,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "bag"
},
{
["value"] = 501001,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003178,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "bg"
},
{
["value"] = 501002,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003178,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "bg"
},
{
["value"] = 501003,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003178,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "bg"
},
{
["value"] = 501004,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003178,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "bg"
},
{
["value"] = 501005,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003178,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "bg"
},
{
["value"] = 501006,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003178,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
gg.toast("✓ Pɪɴᴏᴄᴄʜɪᴏ Sᴜɪᴛ...!!!")
end

function SB()
gg.setVisible(false)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 17500"
},
{
["value"] = 1400129,
["type"] = 4
},
{
["lv"] = 519,
["offset"] = 4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1405098,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 17500"
},
{
["value"] = 502001,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1502003029,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 502002,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1502003029,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 502003,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1502003029,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 502004,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1502003029,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 502005,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1502003029,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501001,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501002,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501003,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501004,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501005,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501006,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
gg.toast("✓ Bɴɴʏ S𝟼 Sᴜɪᴛ...!!!")
end

function S6()
gg.clearResults()
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Bʀɪʟʟɪᴀɴᴛ Aɴɴɪᴠᴇʀsᴀʀʏ Sᴜɪᴛ"
},
{
["value"] = 1400129,
["type"] = 4
},
{
["lv"] = 519,
["offset"] = 4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1405096,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 17500"
},
{
["value"] = 502001,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1502003029,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 502002,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1502003029,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 502003,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1502003029,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 502004,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1502003029,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 502005,
["type"] = 4
},
{
["lv"] = 502,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1502003029,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501001,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501002,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501003,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501004,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501005,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 13600"
},
{
["value"] = 501006,
["type"] = 4
},
{
["lv"] = 501,
["offset"] = -4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003045,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
gg.toast("✓ Bʀɪʟʟɪᴀɴᴛ Aɴɴɪᴠᴇʀsᴀʀʏ Sᴜɪᴛ...!!!")
end

function MU()
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Hacker Bolte"
},
{
["value"] = 1400129,
["type"] = 4
},
{
["lv"] = 519,
["offset"] = 4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1405623,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Hacker Bolte"
},
{
["value"] = 501001,
["type"] = 4
},
{
["lv"] = 2101,
["offset"] = 4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501001137,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Rowdy Hacker"
},
{
["value"] = 501002,
["type"] = 4
},
{
["lv"] = 9102,
["offset"] = 4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501002137,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Rowdy Hacker"
},
{
["value"] = 501003,
["type"] = 4
},
{
["lv"] = 9103,
["offset"] = 4,
["type"] = 4
}
}
qmxg = {
{
["value"] = 1501003137,
["offset"] = 0,
["type"] = 4
}
}
xqmnb(qmnb)
gg.toast("✓ Mᴜᴍᴍʏ Sᴜɪᴛ...!!!")
end

function GL()
gg.clearResults()
qmnb = {
{memory = 32},
{
name = "𝑷𝑯𝑨𝑹𝑨𝑶𝑯 "
},
{value = 1400129, type = 4},
{
lv = 519,
offset = 4,
type = 4
}
}
qmxg = {
{
value = 1405628,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
gg.clearResults()
Memory_offset({
{703001, 4},
{
703001,
4,
4
},
{
703001,
16,
4
}
}, {
{
1401619,
16,
4,
false
}
}, 32, 4, "PHARAOH ")
Memory_offset({
{703002, 4},
{
703002,
4,
4
},
{
703002,
16,
4
}
}, {
{
1401619,
16,
4,
false
}
}, 32, 4, "PHARAOH ")
gg.setRanges(gg.REGION_ANONYMOUS)
qmnb = {
{memory = 32},
{
name = "Rowdy"
},
{value = 502001, type = 4},
{
lv = 502,
offset = -4,
type = 4
}
}
gg.setVisible(false)
qmxg = {
{
value = 1402578,
offset = 0,
type = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{memory = 32},
{
name = "Rowdy"
},
{value = 502004, type = 4},
{
lv = 502,
offset = -4,
type = 4
}
}
gg.setVisible(false)
qmxg = {
{
value = 1402578,
offset = 0,
type = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{memory = 32},
{
name = "Rowdy"
},
{value = 502002, type = 4},
{
lv = 502,
offset = -4,
type = 4
}
}
gg.setVisible(false)
qmxg = {
{
value = 1402578,
offset = 0,
type = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{memory = 32},
{
name = "Rowdy"
},
{value = 502005, type = 4},
{
lv = 502,
offset = -4,
type = 4
}
}
gg.setVisible(false)
qmxg = {
{
value = 1402578,
offset = 0,
type = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{memory = 32},
{
name = "Rowdy"
},
{value = 502003, type = 4},
{
lv = 502,
offset = -4,
type = 4
}
}
gg.setVisible(false)
qmxg = {
{
value = 1402578,
offset = 0,
type = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{memory = 32},
{
name = "PHARAOH BAG"
},
{value = 501001, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501001174,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "PHARAOH BAG"
},
{value = 501002, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501002174,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "PHARAOH BAG"
},
{value = 501003, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501003174,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "PHARAOH BAG"
},
{value = 501004, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501002174,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "PHARAOH BAG"
},
{value = 501005, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501003174,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "PHAROH BAG"
},
{value = 501006, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501003174,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
gg.toast("✓ Gᴏʟᴅᴇɴ Pʜᴀʀᴀᴏʜ X-Sᴜɪᴛ Mᴀx...!!!")
end

function RA()
gg.setVisible(false)
gg.clearResults()
qmnb = {
{memory = 32},
{
name = "𝑹𝑨𝑽𝑬𝑵 𝑿 "
},
{value = 1400129, type = 4},
{
lv = 519,
offset = 4,
type = 4
}
}
qmxg = {
{
value = 1405870,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
gg.clearResults()
Memory_offset({
{108003, 4},
{
108003,
4,
4
},
{
10800300,
16,
4
}
}, {
{
1108003010,
16,
4,
false
}
}, 32, 4, "RAVEN SICKLE")
Memory_offset({
{703001, 4},
{
703001,
4,
4
},
{
703001,
16,
4
}
}, {
{
1401621,
16,
4,
false
}
}, 32, 4, "RAVEN ")
Memory_offset({
{703002, 4},
{
703002,
4,
4
},
{
703002,
16,
4
}
}, {
{
1401621,
16,
4,
false
}
}, 32, 4, "RAVEN ")
gg.setRanges(gg.REGION_ANONYMOUS)
qmnb = {
{memory = 32},
{
name = "Rowdy"
},
{value = 502001, type = 4},
{
lv = 502,
offset = -4,
type = 4
}
}
gg.setVisible(false)
qmxg = {
{
value = 1402657,
offset = 0,
type = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{memory = 32},
{
name = "Rowdy"
},
{value = 502004, type = 4},
{
lv = 502,
offset = -4,
type = 4
}
}
gg.setVisible(false)
qmxg = {
{
value = 1402657,
offset = 0,
type = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{memory = 32},
{
name = "Rowdy"
},
{value = 502002, type = 4},
{
lv = 502,
offset = -4,
type = 4
}
}
gg.setVisible(false)
qmxg = {
{
value = 1402657,
offset = 0,
type = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{memory = 32},
{
name = "Rowdy"
},
{value = 502005, type = 4},
{
lv = 502,
offset = -4,
type = 4
}
}
gg.setVisible(false)
qmxg = {
{
value = 1402657,
offset = 0,
type = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{memory = 32},
{
name = "Rowdy"
},
{value = 502003, type = 4},
{
lv = 502,
offset = -4,
type = 4
}
}
gg.setVisible(false)
qmxg = {
{
value = 1402657,
offset = 0,
type = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{memory = 32},
{
name = "RAVEN BAG"
},
{value = 501001, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501001220,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "RAVEN BAG"
},
{value = 501002, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501002220,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "RAVEN BAG"
},
{value = 501003, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501003220,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "RAVEN BAG"
},
{value = 501004, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501002220,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "RAVEN BAG"
},
{value = 501005, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501003220,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
qmnb = {
{memory = 32},
{
name = "𝑹𝑨𝑽𝑬𝑵 𝑩𝑨𝑮"
},
{value = 501006, type = 4},
{
lv = 501,
offset = -4,
type = 4
}
}
qmxg = {
{
value = 1501003220,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
gg.clearResults()
gg.toast("✓ Rᴀᴠᴀɴ X-Sᴜɪᴛ Mᴀx...!!!")
end

function WP()
NLW5 = gg.choice({
"▄︻̷̿┻̿═━一 ᴍ𝟺𝟷𝟼 ᴍᴇɴᴜ",
"▄︻̷̿┻̿═━一 ᴀᴋᴍ ᴍᴇɴᴜ",
"▄︻̷̿┻̿═━一 sᴄᴀʀʟ ᴍᴇɴᴜ",
"▄︻̷̿┻̿═━一 ᴅᴘ-𝟸𝟾 s𝟹",
"▄︻̷̿┻̿═━一 ᴍ𝟽𝟼𝟸 ᴜᴘ",
" 🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲 "
}, nil, os.date("╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW5 == nil then
else
if NLW5 == 1 then
M4()
end
if NLW5 == 2 then
AK()
end
if NLW5 == 3 then
SC()
end
if NLW5 == 4 then
DP()
end
if NLW5 == 5 then
M7()
end
if NLW5 == 6 then
HOME()
end
end
NLWGAMING = -1
end

function M4()
NLW6 = gg.choice({
"▄︻̷̿┻̿═━一 ᴛʜᴇ ꜰᴏᴏʟ (ᴊᴏᴋᴇʀ) ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ɢʟᴀᴄɪᴇʀ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ʟɪᴢᴀʀᴅ ʀᴏᴀʀ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ᴡᴀɴᴅᴇʀᴇʀ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ᴄᴀʟʟ ᴏꜰ ᴛʜᴇ ᴡɪʟᴅ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ᴠᴀᴍᴘɪʀᴇ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ɢᴏʟᴅᴇɴ ᴛʀɪɢɢᴇʀ ꜱᴋɪɴ",
" 🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"
}, nil, os.date("╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW6 == nil then
else
if NLW6 == 1 then
FOOLM()
end
if NLW6 == 2 then
M4Glacier()
end
if NLW6 == 3 then
LizardMM()
end
if NLW6 == 4 then
WANDM4()
end
if NLW6 == 5 then
CALLOFM4()
end
if NLW6 == 6 then
VAMPM4()
end
if NLW6 == 7 then
GOLDM4()
end
if NLW6 == 8 then
HOME()
end
end
NLWGAMING = -1
end

function FOOLM()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004062", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ ᴍ𝟺𝟷𝟼 Tʜᴇ Fᴏᴏʟ...!!!")
end

function M4Glacier()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004046", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ ᴍ𝟺𝟷𝟼 Gʟᴀᴄɪᴇʀ...!!!")
end

function LizardMM()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004086", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ ᴍ𝟺𝟷𝟼 Lɪᴢᴀʀᴅ Rᴏᴀʀ...!!!")
end

function WANDM4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004078", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ ᴍ𝟺𝟷𝟼 Wᴀɴᴅᴇʀᴇʀ...!!!")
end

function CALLOFM4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004098", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ ᴍ𝟺𝟷𝟼 Cᴀʟʟ Oғ Tʜᴇ Wɪʟᴅ...!!!")
end

function VAMPM4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004033", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ ᴍ𝟺𝟷𝟼 Vᴀᴍᴘɪʀᴇ...!!!")
end

function GOLDM4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004034", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ ᴍ𝟺𝟷𝟼 Gᴏʟᴅᴇɴ Tʀɪɢɢᴇʀ..!!!")
end

function AK()
NLW7 = gg.choice({
"▄︻̷̿┻̿═━一 ᴊᴀᴄᴋ-ᴏ'-ʟᴀɴᴛᴇʀɴ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ᴅᴇꜱᴇʀᴛ ꜰᴏꜱꜱɪʟ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ᴀᴋᴍ ɢʟᴀᴄɪᴇʀ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ᴛʜᴇ ꜱᴇᴠᴇɴ ꜱᴇᴀꜱ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ɢᴏʟᴅᴇɴ ᴘɪɢʟᴇᴛ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ꜱᴀɴᴛᴀ ᴄʟᴀᴜꜱ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ʀᴏᴀʀɪɴɢ ᴛɪɢᴇʀ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ɪɴᴠᴀᴅᴇʀ ꜱᴋɪɴ",
" 🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"
}, nil, os.date("╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW7 == nil then
else
if NLW7 == 1 then
Jacko()
end
if NLW7 == 2 then
DesertFossil()
end
if NLW7 == 3 then
AKMGlacier()
end
if NLW7 == 4 then
SevenSeas()
end
if NLW7 == 5 then
Piglet()
end
if NLW7 == 6 then
SantaAK()
end
if NLW7 == 7 then
ROARING()
end
if NLW7 == 8 then
Invader()
end
if NLW7 == 9 then
HOME()
end
end
NLWGAMING = -1
end

function Jacko()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001116", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ Aᴋᴍ Jᴀᴄᴋ-ᴏ'-ʟᴀɴᴛᴇʀɴ...!!!")
end

function DesertFossil()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001103", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ Aᴋᴍ Dᴇsᴇʀᴛ Fᴏssɪʟ...!!!")
end

function AKMGlacier()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001089", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ Aᴋᴍ Gʟᴀᴄɪᴇʀ...!!!")
end

function SevenSeas()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001063", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ Aᴋᴍ Tʜᴇ Sᴇᴠᴇɴ Sᴇᴀs...!!!")
end

function Piglet()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001030", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ AKM Gᴏʟᴅᴇɴ Pɪɢʟᴇᴛ...!!!")
end

function SantaAK()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001035", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ Aᴋᴍ Sᴀɴᴛᴀ Cʟᴀᴜs...!!!")
end

function ROARING()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001068", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ Aᴋᴍ Rᴏᴀʀɪɴɢ Tɪɢᴇʀ...!!!")
end

function Invader()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001046", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✓ Aᴋᴍ Iɴᴠᴀᴅᴇʀ...!!!")
end

function SC()
NLW8 = gg.choice({
"▄︻̷̿┻̿═━一 ᴇɴᴄʜᴀɴᴛᴇᴅ ᴘᴜᴍᴘᴋɪɴ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ᴡᴀᴛᴇʀ ʙʟᴀꜱᴛᴇʀ ꜱᴋɪɴ",
"▄︻̷̿┻̿═━一 ᴏᴘᴇʀᴀᴛɪᴏɴ ᴛᴏᴍᴏʀʀᴏᴡ ꜱᴋɪɴ",
" 🇲🇲⭐🅱🅰🅲🅺⭐🇲🇲"
}, nil, os.date("╭──────────────────────────╮\n🐬🐬𝐍𝐋𝐖𝐆𝐌𝐀𝐈𝐍𝐆🐬🐬\n🐉𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧🐉\n╭╾•Today : %A, %d %B %Y\n╰╾•Time : %H : %M : %S️\n╰──────────────────────────╯"))
if NLW8 == nil then
else
if NLW8 == 1 then
PUMPKIN()
end
if NLW8 == 2 then
WATERBLASTER()
end
if NLW8 == 3 then
OPERATION()
end
if NLW8 == 4 then
HOME()
end
end
NLWGAMING = -1
end

function PUMPKIN()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300", 4, false, 536870912, 0, -1)
gg.searchNumber("10100300", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("1101003070", 4)
gg.clearResults()
gg.toast("✓ Sᴄᴀʀ-ʟ Eɴᴄʜᴀɴᴛᴇᴅ Pᴜᴍᴘᴋɪɴ...!!!")
end

function WATERBLASTER()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300", 4, false, 536870912, 0, -1)
gg.searchNumber("10100300", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("1101003057", 4)
gg.clearResults()
gg.toast("✓ Sᴄᴀʀ-ʟ Wᴀᴛᴇʀ Bʟᴀsᴛᴇʀ ...!!!")
end

function OPERATION()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300", 4, false, 536870912, 0, -1)
gg.searchNumber("10100300", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("1101003080", 4)
gg.clearResults()
gg.toast("✓ Sᴄᴀʀ-ʟ Oᴘᴇʀᴀᴛɪᴏɴ Tᴏᴍᴏʀʀᴏᴡ...!!!")
end

function DP()
gg.setVisible(false)
gg.alert("DP")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Anubian Akm"
},
{
["value"] = 10500200,
["type"] = 4
},
{
["lv"] = 105,
["offset"] = -4,
["type"] = 4
}
}
gg.setVisible(false)
qmxg = {
{
["value"] = 1105002011,
["offset"] = 0,
["type"] = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Anubian Akm"
},
{
["value"] = 29500200,
["type"] = 4
},
{
["lv"] = 0,
["offset"] = -4,
["type"] = 4
}
}
gg.setVisible(false)
qmxg = {
{
["value"] = 1050020111,
["offset"] = 0,
["type"] = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.toast("✓ Dᴘ-2𝟾 S𝟹...!!!")
end

function M7()
gg.setVisible(false)
gg.toast("M762")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 1700152"
},
{
["value"] = 10100800,
["type"] = 4
},
{
["lv"] = 101,
["offset"] = -4,
["type"] = 4
}
}
gg.setVisible(false)
qmxg = {
{
["value"] = 1101008051,
["offset"] = 0,
["type"] = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "Search 1700152"
},
{
["value"] = 29100800,
["type"] = 4
},
{
["lv"] = 0,
["offset"] = -4,
["type"] = 4
}
}
gg.setVisible(false)
qmxg = {
{
["value"] = 1010080511,
["offset"] = 0,
["type"] = 4
}
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.toast("✓ M𝟽𝟼𝟸 Uᴘ...!!!")
end


function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to αpplíєd")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully αpplíєd")else gg.toast(_on.."\nSuccessfully αpplíєd")end end end

function libBase(offset, type, value, name) a = os.clock() gg.setValues({ [1] = { address = gg.getRangesList('libUE4.so' or 'libtersafe.so')[1].start + offset, flags = type, value = value}}) b = os.clock() - a gg.toast(name .. ' MODIFIED \nIN '..b) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "SUCCESSFULLY OPENED，一ALL TOGETHER" .. xgsl .. "DATA") else gg.toast(qmnb[2]["name"] .. "NO DATA FOUND， FAILED TO OPEN") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("SUCCESSFULLY OPEN，一ALL TOGETHER MODIFIED"..#t.."DATA") gg.addListItems(t) else gg.toast("NOT DATA FOUND，OPEN FAILED", false) return false end else gg.toast("NOT FOUND") return false end end

function xqmnb()
gg.clearResults()
gg.setRanges(A0_234[1]["memory"])
gg.searchNumber(A0_234[3]["value"], A0_234[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(A0_234[2]["name"] .. "开启失败")
else
gg.refineNumber(A0_234[3]["value"], A0_234[3]["type"])
gg.refineNumber(A0_234[3]["value"], A0_234[3]["type"])
gg.refineNumber(A0_234[3]["value"], A0_234[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(A0_234[2]["name"] .. "开启失败")
else
sl = gg.getResults(999999)
sz = gg.getResultCount()
xgsl = 0
if 999999 < sz then
sz = 999999
end
for sn4 = 1, sz do
pdsz = true
for sn8 = 4, #A0_234 do
if pdsz == true then
pysz = {}
pysz[1] = {}
pysz[1].address = sl[sn4].address + A0_234[sn8]["offset"]
pysz[1].flags = A0_234[sn8]["type"]
szpy = gg.getValues(pysz)
pdpd = A0_234[sn8]["lv"] .. ";" .. szpy[1].value
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
szpy = sl[sn4].address
xgxc(szpy, qmxg)
end
end
if xgjg == true then
gg.toast(A0_234[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据")
else
gg.toast(A0_234[2]["name"] .. "未搜索到数据，开启失败")
end
end
end
end

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to αpplíєd")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully αpplíєd")else gg.toast(_on.."\nSuccessfully αpplíєd")end end end

function libBase(offset, type, value, name) a = os.clock() gg.setValues({ [1] = { address = gg.getRangesList('libUE4.so' or 'libtersafe.so')[1].start + offset, flags = type, value = value}}) b = os.clock() - a gg.toast(name .. ' MODIFIED \nIN '..b) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "SUCCESSFULLY OPENED，一ALL TOGETHER" .. xgsl .. "DATA") else gg.toast(qmnb[2]["name"] .. "NO DATA FOUND， FAILED TO OPEN") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("SUCCESSFULLY OPEN，一ALL TOGETHER MODIFIED"..#t.."DATA") gg.addListItems(t) else gg.toast("NOT DATA FOUND，OPEN FAILED", false) return false end else gg.toast("NOT FOUND") return false end end


function xqmnb()
gg.clearResults()
gg.setRanges(A0_290[1]["memory"])
gg.searchNumber(A0_290[3]["value"], A0_290[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(A0_290[2]["name"] .. "开启失败")
else
gg.refineNumber(A0_290[3]["value"], A0_290[3]["type"])
gg.refineNumber(A0_290[3]["value"], A0_290[3]["type"])
gg.refineNumber(A0_290[3]["value"], A0_290[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(A0_290[2]["name"] .. "开启失败")
else
sl = gg.getResults(999999)
sz = gg.getResultCount()
xgsl = 0
if 999999 < sz then
sz = 999999
end
for sn4 = 1, sz do
pdsz = true
for sn8 = 4, #A0_290 do
if pdsz == true then
pysz = {}
pysz[1] = {}
pysz[1].address = sl[sn4].address + A0_290[sn8]["offset"]
pysz[1].flags = A0_290[sn8]["type"]
szpy = gg.getValues(pysz)
pdpd = A0_290[sn8]["lv"] .. ";" .. szpy[1].value
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
szpy = sl[sn4].address
xgxc(szpy, qmxg)
end
end
if xgjg == true then
gg.toast(A0_290[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据")
else
gg.toast(A0_290[2]["name"] .. "未搜索到数据，开启失败")
end
end
end
end


function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to αpplíєd")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully αpplíєd")else gg.toast(_on.."\nSuccessfully αpplíєd")end end end

function libBase(offset, type, value, name) a = os.clock() gg.setValues({ [1] = { address = gg.getRangesList('libUE4.so' or 'libtersafe.so')[1].start + offset, flags = type, value = value}}) b = os.clock() - a gg.toast(name .. ' MODIFIED \nIN '..b) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "SUCCESSFULLY OPENED，一ALL TOGETHER" .. xgsl .. "DATA") else gg.toast(qmnb[2]["name"] .. "NO DATA FOUND， FAILED TO OPEN") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("SUCCESSFULLY OPEN，一ALL TOGETHER MODIFIED"..#t.."DATA") gg.addListItems(t) else gg.toast("NOT DATA FOUND，OPEN FAILED", false) return false end else gg.toast("NOT FOUND") return false end end

function xqmnb()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(A0_346[1]["memory"])
gg.searchNumber(A0_346[3]["value"], A0_346[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(A0_346[2]["name"] .. "开启失败")
else
gg.refineNumber(A0_346[3]["value"], A0_346[3]["type"])
gg.refineNumber(A0_346[3]["value"], A0_346[3]["type"])
gg.refineNumber(A0_346[3]["value"], A0_346[3]["type"])
xxx = gg.getResultCount()
if gg.getResultCount() == 0 then
gg.toast(A0_346[2]["name"] .. "开启失败")
else
sl = gg.getResults(999999)
sz = gg.getResultCount()
xgsl = 0
if 999999 < sz then
sz = 999999
end
for sn4 = 1, sz do
pdsz = true
for sn8 = 4, #A0_346 do
if pdsz == true then
pysz = {}
pysz[1] = {}
pysz[1].address = sl[sn4].address + A0_346[sn8]["offset"]
pysz[1].flags = A0_346[sn8]["type"]
szpy = gg.getValues(pysz)
pdpd = A0_346[sn8]["lv"] .. ";" .. szpy[1].value
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
szpy = sl[sn4].address
xgxc(szpy, qmxg)
end
end
if xgjg == true then
gg.toast(A0_346[2]["name"] .. "开启成功\n共搜索" .. xxx .. "条数据\n修改了" .. xgsl .. "条数据")
else
gg.toast(A0_346[2]["name"] .. "开启失败")
end
end
end
gg.clearResults()
end

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to αpplíєd")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully αpplíєd")else gg.toast(_on.."\nSuccessfully αpplíєd")end end end

function libBase(offset, type, value, name) a = os.clock() gg.setValues({ [1] = { address = gg.getRangesList('libUE4.so' or 'libtersafe.so')[1].start + offset, flags = type, value = value}}) b = os.clock() - a gg.toast(name .. ' MODIFIED \nIN '..b) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "SUCCESSFULLY OPENED，一ALL TOGETHER" .. xgsl .. "DATA") else gg.toast(qmnb[2]["name"] .. "NO DATA FOUND， FAILED TO OPEN") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("SUCCESSFULLY OPEN，一ALL TOGETHER MODIFIED"..#t.."DATA") gg.addListItems(t) else gg.toast("NOT DATA FOUND，OPEN FAILED", false) return false end else gg.toast("NOT FOUND") return false end end

function xqmnb()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(A0_397[1]["memory"])
gg.searchNumber(A0_397[3]["value"], A0_397[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(A0_397[2]["name"] .. "开启失败")
else
gg.refineNumber(A0_397[3]["value"], A0_397[3]["type"])
gg.refineNumber(A0_397[3]["value"], A0_397[3]["type"])
gg.refineNumber(A0_397[3]["value"], A0_397[3]["type"])
xxx = gg.getResultCount()
if gg.getResultCount() == 0 then
gg.toast(A0_397[2]["name"] .. "开启失败")
else
sl = gg.getResults(999999)
sz = gg.getResultCount()
xgsl = 0
if 999999 < sz then
sz = 999999
end
for sn4 = 1, sz do
pdsz = true
for sn8 = 4, #A0_397 do
if pdsz == true then
pysz = {}
pysz[1] = {}
pysz[1].address = sl[sn4].address + A0_397[sn8]["offset"]
pysz[1].flags = A0_397[sn8]["type"]
szpy = gg.getValues(pysz)
pdpd = A0_397[sn8]["lv"] .. ";" .. szpy[1].value
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
szpy = sl[sn4].address
xgxc(szpy, qmxg)
end
end
if xgjg == true then
gg.toast(A0_397[2]["name"] .. "开启成功\n共搜索" .. xxx .. "条数据\n修改了" .. xgsl .. "条数据")
else
gg.toast(A0_397[2]["name"] .. "开启失败")
end
end
end
gg.clearResults()
end

function Memory_offset()
local L5_403, L6_404, L7_405, L8_406, L9_407, L10_408, L11_409, L12_410, L13_411, L14_412, L15_413, L16_414, L17_415, L18_416, L19_417, L20_418, L21_419, L22_420, L23_421, L24_422, L25_423, L26_424, L27_425, L28_426, L29_427, L30_428, L31_429, L32_430, L33_431
end

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to αpplíєd")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully αpplíєd")else gg.toast(_on.."\nSuccessfully αpplíєd")end end end

function libBase(offset, type, value, name) a = os.clock() gg.setValues({ [1] = { address = gg.getRangesList('libUE4.so' or 'libtersafe.so')[1].start + offset, flags = type, value = value}}) b = os.clock() - a gg.toast(name .. ' MODIFIED \nIN '..b) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " FAILED TO OPEN") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "SUCCESSFULLY OPENED，一ALL TOGETHER" .. xgsl .. "DATA") else gg.toast(qmnb[2]["name"] .. "NO DATA FOUND， FAILED TO OPEN") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("SUCCESSFULLY OPEN，一ALL TOGETHER MODIFIED"..#t.."DATA") gg.addListItems(t) else gg.toast("NOT DATA FOUND，OPEN FAILED", false) return false end else gg.toast("NOT FOUND") return false end end


function EXIT()
gg.setVisible(true)
print(" ─────────────────────────\n 👑𝐍𝐋𝐖 𝐂𝐡𝐄𝐚𝐓𝐞𝐑 𝐓𝐞𝐀𝐦 𝐎𝐟𝐅𝐢𝐂𝐚𝐋🇲🇲\n ─────────────────────────")
print("☆ ┌─┐   .─┐☆")
  print("    │▒│ /▒/      ")
  print("    │▒│/▒/       ")
  print("    │▒/▒/─┬─┐  ")
  print("    │▒│▒|▒│▒│  ")
 print("💢𝙽𝙻𝚆 𝙲𝙷𝙴𝙰𝚃𝙴𝚁 𝚃𝙴𝙰𝙼💢")
     print("┌┴─┴─┐-┘─┘   ")
     print("│▒┌──┘▒▒▒│ ")
     print("└┐▒▒▒▒▒▒┌┘ ")
  print("    └┐▒▒▒▒┌┘")
print("☞S𝚄𝙿𝙿𝙾𝚁𝚃 @nlw athintthu☜")
  print("☞T𝙷𝙰𝙽𝙺 F𝙾𝚁 S𝚄𝙿𝙿𝙾𝚁𝚃☜")
gg.setVisible(true)
print(os.date("╭╾•Today : %A, %d %B %Y"))
	print("╽")
	print(os.date("╰╾•Time : %H : %M : %S"))
gg.setVisible(true)	
os.exit()
end 
while true do
if gg.isVisible(true) then
NLWGAMING = 1
gg.setVisible(false)
end 
gg.clearResults()
if NLWGAMING == 1 then
HOME()
end 
end 
      gg.alert("𝐖𝐞𝐥𝐜𝐨𝐦𝐞 𝐛𝐚𝐜𝐤, 𝐥𝐚𝐝𝐢𝐞𝐬 𝐚𝐧𝐝 𝐠𝐞𝐧𝐭𝐥𝐞𝐦𝐞𝐧\n𝐎𝐧𝐥𝐲 𝐕𝐈𝐏 𝐚𝐩𝐤 𝐢𝐬 𝐚??𝐥??𝐰𝐞𝐝")
  --else gg.alert("\n🖕𝙵𝚄𝙲𝙺𝚈𝙾𝚄 𝙶𝙰𝚈𝚂🖕\n👉𝚄 𝙲𝙰𝙽𝙽𝙾𝚃 𝙾𝙿𝙴𝙽 𝚃𝙷𝙸𝚂 𝚂𝙲𝚁𝙸𝙿𝚃👌\n📌𝙿𝚁𝙾𝚃𝙴𝙲𝚃 𝙱𝚈 𝙰𝚝𝚑𝚒𝚗𝚝 𝚃𝚑𝚞📌") os.exit() end