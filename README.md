# blockdiag

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
