.class public interface abstract Landroid/os/mobile/zfs/IZFS;
.super Ljava/lang/Object;
.source "IZFS.java"


# virtual methods
.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract createFile(Ljava/lang/String;)Landroid/os/mobile/zfs/IZFSFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract createFileInputStream(Landroid/os/mobile/zfs/IZFSFile;)Landroid/os/mobile/zfs/ZFSInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract createFileOutputStream(Landroid/os/mobile/zfs/IZFSFile;)Landroid/os/mobile/zfs/ZFSOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract createStatFs(Ljava/lang/String;)Landroid/os/mobile/zfs/IZFSStatFs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRootPath()Ljava/lang/String;
.end method

.method public abstract getZFSDevice()Ljava/lang/Object;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isSupport(Ljava/lang/String;)Z
.end method
