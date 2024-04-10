def caesar_cipher(text = "", key = 0)
    t = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
    w = "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
    i = 0
    for i in 0..text.length-1 do
        if  text[i].ord in 65..90 then
            text[i] = w[w.index(text[i]) + key]
        elsif text[i].ord in 97..122 then
            text[i] = t[t.index(text[i]) + key]
        end
    end
    puts text
end

