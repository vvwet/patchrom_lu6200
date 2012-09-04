.class public Lcom/broadcom/bt/util/io/input/NullInputStream;
.super Ljava/io/InputStream;
.source "NullInputStream.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private markSupported:Z

.field private position:J

.field private readlimit:J

.field private size:J

.field private throwEofException:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "size"

    .prologue
    .line 97
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/broadcom/bt/util/io/input/NullInputStream;-><init>(JZZ)V

    .line 98
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 2
    .parameter "size"
    .parameter "markSupported"
    .parameter "throwEofException"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->mark:J

    .line 112
    iput-wide p1, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    .line 113
    iput-boolean p3, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->markSupported:Z

    .line 114
    iput-boolean p4, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->throwEofException:Z

    .line 115
    return-void
.end method

.method private doEndOfFile()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->eof:Z

    .line 340
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->throwEofException:Z

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 343
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public available()I
    .locals 6

    .prologue
    .line 141
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    iget-wide v4, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    sub-long v0, v2, v4

    .line 142
    .local v0, avail:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 143
    const/4 v2, 0x0

    .line 147
    :goto_0
    return v2

    .line 144
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 145
    const v2, 0x7fffffff

    goto :goto_0

    .line 147
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->eof:Z

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->mark:J

    .line 161
    return-void
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->markSupported:Z

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->mark:J

    .line 175
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->readlimit:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->markSupported:Z

    return v0
.end method

.method protected processByte()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method protected processBytes([BII)V
    .locals 0
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 328
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->eof:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 205
    :goto_0
    return v0

    .line 204
    :cond_1
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    .line 205
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/input/NullInputStream;->processByte()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/broadcom/bt/util/io/input/NullInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget-boolean v1, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->eof:Z

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Read after end of file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    iget-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    iget-wide v3, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 250
    :goto_0
    return v0

    .line 243
    :cond_1
    iget-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    .line 244
    move v0, p3

    .line 245
    .local v0, returnLength:I
    iget-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    iget-wide v3, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 246
    iget-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    iget-wide v3, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sub-int v0, p3, v1

    .line 247
    iget-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    iput-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    .line 249
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/broadcom/bt/util/io/input/NullInputStream;->processBytes([BII)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->markSupported:Z

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 265
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 266
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->mark:J

    iget-wide v4, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->readlimit:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 269
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->mark:J

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->eof:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 6
    .parameter "numberOfBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-boolean v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->eof:Z

    if-eqz v2, :cond_0

    .line 290
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Skip after end of file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_0
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/input/NullInputStream;->doEndOfFile()I

    move-result v2

    int-to-long v0, v2

    .line 301
    :cond_1
    :goto_0
    return-wide v0

    .line 295
    :cond_2
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    .line 296
    move-wide v0, p1

    .line 297
    .local v0, returnLength:J
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 298
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    sub-long/2addr v2, v4

    sub-long v0, p1, v2

    .line 299
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->size:J

    iput-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullInputStream;->position:J

    goto :goto_0
.end method
