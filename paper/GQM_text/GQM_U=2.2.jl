using Distributed

#@everywhere using ShaorredArrays#@everywhereがいらない？
@everywhere using LinearAlgebra
@everywhere using ProgressBars
@everywhere using Plots
@everywhere using LaTeXStrings
@everywhere function test(inputdata)
    numofdata = countlines(inputdata) #ファイル行数をカウント.テキストファイルを上から詰めておかないと、空のファイルとみなされる
    data = readlines(inputdata) #データファイルの読み込み。配列として確保される。
    trg = [] #空の配列
    sqdetg = [] #空の配列
    #res = []
    #data_string = [] #空の配列
    for inum = 1:numofdata
        u = split(data[inum]) #i番目のデータ。
        #println(u) #この状態ではstringになっている。
        e = parse.(Float64,u[1]) 
        i = parse.(Float64,u[2]) 
        #r = parse.(Float64,u[3])
        #ds = u[end] #最後の文字列の読み込み。endは配列の最後を意味する。
        push!(trg,e) #データの追加
        push!(sqdetg,i) #データの追加
        #push!(res,r) #データの追加
    end
    return trg,sqdetg
end
@everywhere function testfree(inputdata)
    numofdata = countlines(inputdata) #ファイル行数をカウント.テキストファイルを上から詰めておかないと、空のファイルとみなされる
    data = readlines(inputdata) #データファイルの読み込み。配列として確保される。
    M=[]
    trg = [] #空の配列
    sqdetg = [] #空の配列
    #res = []
    #data_string = [] #空の配列
    for inum = 1:numofdata
        u = split(data[inum]) #i番目のデータ。
        #println(u) #この状態ではstringになっている。
        m = parse.(Float64,u[1]) 
        trgm = parse.(Float64,u[2]) 
        sqdetgm = parse.(Float64,u[3])
        #ds = u[end] #最後の文字列の読み込み。endは配列の最後を意味する。
        push!(M,m)
        push!(trg,trgm) #データの追加
        push!(sqdetg,sqdetgm) #データの追加
        #push!(res,r) #データの追加
    end
    return M,trg,sqdetg
end
@everywhere function int(A,M,U)
    trg,detg = test("../Data/QWZ/$(A)/M=$(M)/U=$(U)/metric_int_M=$(M)_U=$(U).dat")
    return(trg,detg)
end


trgdata = []

detgdata = []
U = 0.022
M1=[0.85,0.9]#07_28_qmtest
M2=[1.0]#06_16_qmtest
M3=[1.1]#08_08_qmtest
M4=[1.15]#07_28_qmtest
M5=[1.35]#08_08_qmtest
M6=[1.4,1.45]#09_20_qmtest
M7=[1.5]#01_30_qmtest
M8=[1.55]#09_20_qmtest
M9=[1.65]#07_28_qmtest
M10=[1.69]#08_08_qmtest
M11=[1.71,1.75,1.85,1.9,1.95,2.0]#07_28_qmtest

M = vcat(M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11)
for i in 1:length(M1)
    trg,detg = int("07_28_qmtest",M1[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(M2)
    trg,detg = int("06_16_qmtest",M2[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(M3)
    trg,detg = int("08_08_qmtest",M3[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(M4)
    trg,detg = int("07_28_qmtest",M4[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(M5)
    trg,detg = int("08_08_qmtest",M5[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(M6)
    trg,detg = int("09_20_qmtest",M6[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(M7)
    trg,detg = int("01_30_qmtest",M7[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(M8)
    trg,detg = int("09_20_qmtest",M8[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(M9)
    trg,detg = int("07_28_qmtest",M9[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(M10)
    trg,detg = int("08_08_qmtest",M10[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(M11)
    trg,detg = int("07_28_qmtest",M11[i],U)
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end

for i in 1:length(M)
    open("./QWZ/DMFT/qm/paper_qm@U=$(U).dat","a+") do f
        m = M[i]
        trg= trgdata[i]
        detg= detgdata[i]
        
        println(f,"$(m) $(trg) $(detg)")
    end
end

