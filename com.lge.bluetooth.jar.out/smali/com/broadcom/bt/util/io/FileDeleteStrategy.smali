.class public Lcom/broadcom/bt/util/io/FileDeleteStrategy;
.super Ljava/lang/Object;
.source "FileDeleteStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/io/FileDeleteStrategy$ForceFileDeleteStrategy;
    }
.end annotation


# static fields
.field public static final FORCE:Lcom/broadcom/bt/util/io/FileDeleteStrategy;

.field public static final NORMAL:Lcom/broadcom/bt/util/io/FileDeleteStrategy;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/broadcom/bt/util/io/FileDeleteStrategy;

    const-string v1, "Normal"

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/broadcom/bt/util/io/FileDeleteStrategy;->NORMAL:Lcom/broadcom/bt/util/io/FileDeleteStrategy;

    .line 63
    new-instance v0, Lcom/broadcom/bt/util/io/FileDeleteStrategy$ForceFileDeleteStrategy;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/FileDeleteStrategy$ForceFileDeleteStrategy;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/FileDeleteStrategy;->FORCE:Lcom/broadcom/bt/util/io/FileDeleteStrategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/broadcom/bt/util/io/FileDeleteStrategy;->name:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/File;)V
    .locals 3
    .parameter "fileToDelete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/io/FileDeleteStrategy;->doDelete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deletion failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    return-void
.end method

.method public deleteQuietly(Ljava/io/File;)Z
    .locals 2
    .parameter "fileToDelete"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    .line 94
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/io/FileDeleteStrategy;->doDelete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected doDelete(Ljava/io/File;)Z
    .locals 1
    .parameter "fileToDelete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDeleteStrategy["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/util/io/FileDeleteStrategy;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
