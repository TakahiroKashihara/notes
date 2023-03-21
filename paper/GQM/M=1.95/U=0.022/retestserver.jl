@everywhere function test(inputdata)
    numofdata = countlines(inputdata) #ファイル行数をカウント.テキストファイルを上から詰めておかないと、空のファイルとみなされる
    data = readlines(inputdata) #データファイルの読み込み。配列として確保される。
    E = [] #空の配列
    ims = [] #空の配列
    res = []
    #data_string = [] #空の配列
    for inum = 1:numofdata
        u = split(data[inum]) #i番目のデータ。
        #println(u) #この状態ではstringになっている。
        e = parse.(Float64,u[1]) 
        i = parse.(Float64,u[2]) 
        r = parse.(Float64,u[3])
        #ds = u[end] #最後の文字列の読み込み。endは配列の最後を意味する。
        push!(E,e) #データの追加
        push!(ims,i) #データの追加
        push!(res,r) #データの追加
    end
    return E,ims,res
end

@everywhere function swise(M,U)
    w,imsA,resA = test("/home/t-kashihara/numerical/100t_DMFT_08_01/M=$M/U=$U/Sigma_A12.dat")

    w,imsB,resB = test("/home/t-kashihara/numerical/100t_DMFT_08_01/M=$M/U=$U/Sigma_B12.dat")

    omegah = collect(0.:0.2/1000:0.2)#積分に使うinput周波数
    popfirst!(omegah)
    omega = collect(-0.2:0.2/1000:0.2)#積分に使う周波数
    
    #線形補完する
    imsAw = []
    resAw = []
    for i in 1:length(omega)
        for j in 2:length(w)
            if w[j-1] <= omega[i] && omega[i] < w[j]
                t = imsA[j-1] + ((imsA[j]-imsA[j-1])/(w[j]-w[j-1]))*(omega[i]-w[j-1])
                
                t2 = resA[j-1] + ((resA[j]-resA[j-1])/(w[j]-w[j-1]))*(omega[i]-w[j-1])
                push!(imsAw,t)
                push!(resAw,t2)
                #push!(omegatest,w[i])
            end
        end
    end
    imsBw = []
    resBw = []
    for i in 1:length(omega)
        for j in 2:length(w)
            if w[j-1] <= omega[i] && omega[i] < w[j]
                t = imsB[j-1] + ((imsB[j]-imsB[j-1])/(w[j]-w[j-1]))*(omega[i]-w[j-1])
                
                t2 = resB[j-1] + ((resB[j]-resB[j-1])/(w[j]-w[j-1]))*(omega[i]-w[j-1])
                push!(imsBw,t)
                push!(resBw,t2)
                #push!(omegatest,w[i])
            end
        end
    end
    imsAq = []
    for i in 1:length(omega)
        if imsAw[i] > 0.
            push!(imsAq,-0.0000001)
        else
            push!(imsAq,imsAw[i])
        end
    end
    imsBq = []
    for i in 1:length(omega)
        if imsBw[i] > 0.
            push!(imsBq,-0.0000001)
        else
            push!(imsBq,imsBw[i])
        end
    end
    return(omegah,omega,imsAq,resAw,imsBq,resBw)

end
