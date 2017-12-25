# blockdiag

## 概要

Dockerでblockdiag他を利用できます。
- blockdiag
- actdiag
- seqdiag
- nwdiag
NotoSansCJKjp-Regularを内蔵しているので日本語もきれいに描画されます。

## 使い方

### blockdiag
```bash
mkdir workdir
cp "blockdiagfile" workdir/
docker run -it --rm -v $PWD/workdir:/root/workdir kmd2kmd/blockdiag blockdiag -Tsvg "blockdiagfile"
```

### nwdiag
```bash
docker run -it --rm -v $PWD/workdir:/root/workdir kmd2kmd/blockdiag nwdiag -Tsvg "blockdiagfile"
```

### コンテナ内で作業
```bash
docker run -it -v $PWD/workdir:/root/workdir kmd2kmd/blockdiag /bin/sh
```

## 今後の対応
- フォントを含まないslim版を作る
