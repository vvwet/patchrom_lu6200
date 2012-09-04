.class public Lcom/broadcom/bt/service/map/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/map/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_RECEPTION_STATUS_COMPLETE:B = 0x0t

.field public static final MSG_RECEPTION_STATUS_FRACTION:B = 0x1t

.field public static final MSG_RECEPTION_STATUS_NOTIFICATION:B = 0x2t

.field public static final MSG_TYPE_EMAIL:B = 0x1t

.field public static final MSG_TYPE_MMS:B = 0x8t

.field public static final MSG_TYPE_SMS_CDMA:B = 0x4t

.field public static final MSG_TYPE_SMS_GSM:B = 0x2t


# instance fields
.field public mAttachmentSize:I

.field public mDateTime:Ljava/lang/String;

.field public mIsHighPriority:Z

.field public mIsOutbound:Z

.field public mIsProtected:Z

.field public mIsRead:Z

.field public mIsSent:Z

.field public mMsgHandle:Ljava/lang/String;

.field public mMsgSize:I

.field public mMsgType:B

.field public mParameterMask:I

.field public mReceptionStatus:B

.field public mRecipientName:Ljava/lang/String;

.field public mRecipientRddressing:Ljava/lang/String;

.field public mReplyToAddressing:Ljava/lang/String;

.field public mSenderAddressing:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSubject:Ljava/lang/String;

.field public mText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/broadcom/bt/service/map/MessageInfo$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/MessageInfo$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/map/MessageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 35
    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 36
    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 37
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 38
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 39
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 40
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 41
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public constructor <init>(IIIZZZZZLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "parameter_mask"
    .parameter "msg_size"
    .parameter "attachment_size"
    .parameter "text"
    .parameter "highpriority"
    .parameter "read"
    .parameter "sent"
    .parameter "is_protected"
    .parameter "msg_handle"
    .parameter "msg_type"
    .parameter "reception_status"
    .parameter "subject"
    .parameter "date_time"
    .parameter "sender_name"
    .parameter "sender_addressing"
    .parameter "recipient_name"
    .parameter "recipient_addressing"
    .parameter "replyto_addressing"

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 42
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 48
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 49
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 128
    iput p1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 129
    iput p2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 130
    iput p3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 131
    iput-boolean p4, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 132
    iput-boolean p5, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 133
    iput-boolean p6, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 134
    iput-boolean p7, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 135
    iput-boolean p8, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 136
    iput-object p9, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 137
    iput-byte p10, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 138
    iput-byte p11, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 139
    iput-object p12, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 140
    iput-object p13, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 143
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 35
    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 36
    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 37
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 38
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 39
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 40
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 41
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 89
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 94
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 99
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 104
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 110
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 120
    return-void

    .line 87
    :cond_0
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    goto :goto_0

    .line 92
    :cond_1
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    goto :goto_1

    .line 97
    :cond_2
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    goto :goto_2

    .line 102
    :cond_3
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    goto :goto_3

    .line 107
    :cond_4
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    goto :goto_4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public setSubject(Ljava/lang/String;I)V
    .locals 3
    .parameter "subject"
    .parameter "maxSubjectLength"

    .prologue
    const/4 v2, 0x0

    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    if-gtz p2, :cond_1

    .line 156
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x4

    if-le p2, v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p2, -0x4

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_3

    .line 160
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_3
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "parameter_mask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, " msg_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, " attachment_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, " text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, " highpriority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " read = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " sent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " is_protected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, " msg_handle  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, " msg_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " reception_status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, " subject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " date_time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, " sender_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, " sender_addressing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, " recepient_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " recipient_addressing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, " replyto_addressing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    goto :goto_1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    goto :goto_2

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    goto :goto_3

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    goto :goto_4

    .line 75
    :cond_5
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 170
    iget v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    iget v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    iget v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    if-ne v0, v2, :cond_0

    .line 174
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    :goto_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    if-ne v0, v2, :cond_1

    .line 179
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 183
    :goto_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    if-ne v0, v2, :cond_2

    .line 184
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    :goto_2
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    if-ne v0, v2, :cond_3

    .line 189
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 193
    :goto_3
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    if-ne v0, v2, :cond_4

    .line 194
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 199
    :goto_4
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 202
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    return-void

    .line 176
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 186
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 191
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3

    .line 196
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4
.end method
