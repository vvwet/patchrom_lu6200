.class Lcom/broadcom/bt/util/mime4j/RootInputStream;
.super Ljava/io/InputStream;
.source "RootInputStream.java"


# instance fields
.field private is:Ljava/io/InputStream;

.field private lineNumber:I

.field private prev:I

.field private truncated:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->lineNumber:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->prev:I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->truncated:Z

    .line 64
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    .line 65
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->lineNumber:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-boolean v1, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->truncated:Z

    if-eqz v1, :cond_0

    .line 92
    const/4 v0, -0x1

    .line 100
    :goto_0
    return v0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 96
    .local v0, b:I
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->prev:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 97
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->lineNumber:I

    .line 99
    :cond_1
    iput v0, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->prev:I

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/broadcom/bt/util/mime4j/RootInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->truncated:Z

    if-eqz v2, :cond_1

    .line 109
    const/4 v1, -0x1

    .line 119
    :cond_0
    return v1

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 113
    .local v1, n:I
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int v2, p2, v1

    if-ge v0, v2, :cond_0

    .line 114
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->prev:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 115
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->lineNumber:I

    .line 117
    :cond_2
    aget-byte v2, p1, v0

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->prev:I

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public truncate()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/util/mime4j/RootInputStream;->truncated:Z

    .line 85
    return-void
.end method
