# blockdiag

## 使い方

```bash
mkdir workdir
cp "blockdiagfile" workdir/
docker run -it --rm -v $PWD/workdir:/root/workdir kmd2kmd/blockdiag blockdiag -Tsvg "blockdiagfile"
```
