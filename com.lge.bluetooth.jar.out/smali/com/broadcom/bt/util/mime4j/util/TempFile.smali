.class public interface abstract Lcom/broadcom/bt/util/mime4j/util/TempFile;
.super Ljava/lang/Object;
.source "TempFile.java"


# virtual methods
.method public abstract delete()V
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isInMemory()Z
.end method

.method public abstract length()J
.end method
