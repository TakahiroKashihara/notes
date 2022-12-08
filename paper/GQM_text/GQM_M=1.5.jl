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

M=1.5
trgdata = []

detgdata = []
U1=[0.002,0.006,0.014,0.022,0.026,0.028,0.032,0.034]#01_30_qmtest
U12=[0.035,0.036]#09_20_qmtest
U2=[0.037]#02_01_qmtest
U3=[0.038]#08_23_qmmany
U4=[0.039]#02_01_qmtest
U5 = [0.041,0.047]#08_22_qmmany
U6 = [0.052]#09_01_qmphs
U7=[0.053,0.057]#02_01_qmtest
#../Data/QWZ/DMFT/M=1.5
U8 = [0.058]#09_01_qmphs
U = vcat(U1,U12,U2,U3,U4,U5,U6,U7,U8)
println("length(U) = $(length(U))")
trgdata = []
detgdata = []
println("prepare ok")
for i in 1:length(U1)
    trg,detg = int("01_30_qmtest",M,U1[i])
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(U12)
    trg,detg = int("09_20_qmtest",M,U12[i])
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(U2)
    trg,detg = int("02_01_qmtest",M,U2[i])
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(U3)
    trg,detg = int("08_23_qmmany",M,U3[i])
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(U4)
    trg,detg = int("02_01_qmtest",M,U4[i])
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(U5)
    trg,detg = int("08_22_qmmany",M,U5[i])
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(U6)
    trg,detg = int("09_01_qmphs",M,U6[i])
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(U7)
    trg,detg = int("02_01_qmtest",M,U7[i])
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end
for i in 1:length(U8)
    trg,detg = int("09_01_qmphs",M,U8[i])
    push!(trgdata,trg[1])
    push!(detgdata,detg[1])
end

for i in 1:length(U)
    open("./QWZ/DMFT/qm/paper_qm@M=$(M).dat","a+") do f
        u = U[i]
        trg= trgdata[i]
        detg= detgdata[i]
        
        println(f,"$(u) $(trg) $(detg)")
    end
end