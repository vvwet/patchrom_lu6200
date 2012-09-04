.class Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;
.super Lcom/broadcom/bt/util/mime4j/message/AbstractBody;
.source "TempFileBinaryBody.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/message/BinaryBody;


# static fields
.field private static log:Lcom/broadcom/bt/util/mime4j/Log;


# instance fields
.field private parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

.field private tempFile:Lcom/broadcom/bt/util/mime4j/util/TempFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;

    invoke-static {v0}, Lcom/broadcom/bt/util/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lcom/broadcom/bt/util/mime4j/Log;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;->log:Lcom/broadcom/bt/util/mime4j/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/message/AbstractBody;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    .line 63
    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;->tempFile:Lcom/broadcom/bt/util/mime4j/util/TempFile;

    .line 73
    invoke-static {}, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->getInstance()Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->getRootTempPath()Lcom/broadcom/bt/util/mime4j/util/TempPath;

    move-result-object v1

    .line 74
    .local v1, tempPath:Lcom/broadcom/bt/util/mime4j/util/TempPath;
    const-string v2, "attachment"

    const-string v3, ".bin"

    invoke-interface {v1, v2, v3}, Lcom/broadcom/bt/util/mime4j/util/TempPath;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/util/TempFile;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;->tempFile:Lcom/broadcom/bt/util/mime4j/util/TempFile;

    .line 76
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;->tempFile:Lcom/broadcom/bt/util/mime4j/util/TempFile;

    invoke-interface {v2}, Lcom/broadcom/bt/util/mime4j/util/TempFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 77
    .local v0, out:Ljava/io/OutputStream;
    invoke-static {p1, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 78
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 79
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;->tempFile:Lcom/broadcom/bt/util/mime4j/util/TempFile;

    invoke-interface {v0}, Lcom/broadcom/bt/util/mime4j/util/TempFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/broadcom/bt/util/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lcom/broadcom/bt/util/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    .line 93
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/TempFileBinaryBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 107
    return-void
.end method
