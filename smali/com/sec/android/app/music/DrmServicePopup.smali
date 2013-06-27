.class public Lcom/sec/android/app/music/DrmServicePopup;
.super Landroid/app/AlertDialog;
.source "DrmServicePopup.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field drmManager:Lcom/sec/android/app/music/MusicDrmManager;

.field errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field leftButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mBuyListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private final mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDrmPopupData:Lcom/sec/android/app/music/DrmPopupData;

.field private mId:J

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mPlayListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPosition:I

.field private mUri:Landroid/net/Uri;

.field private popupFrom:I

.field private popupString:Ljava/lang/String;

.field private popupStrings:[I

.field private popupType:I

.field private remainedCounts:I

.field rightButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sec/android/app/music/DrmServicePopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/DrmServicePopup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/music/DrmPopupData;)V
    .locals 4
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    .line 49
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    .line 50
    iput-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 51
    iput v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupType:I

    .line 53
    iput-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->mUri:Landroid/net/Uri;

    .line 54
    iput-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->filePath:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->fileName:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->remainedCounts:I

    .line 57
    iput v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupFrom:I

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mPosition:I

    .line 60
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mId:J

    .line 65
    iput-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->leftButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    iput-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->rightButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    iput-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/MusicDrmManager;

    .line 191
    new-instance v1, Lcom/sec/android/app/music/DrmServicePopup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/DrmServicePopup$1;-><init>(Lcom/sec/android/app/music/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mBuyListener:Landroid/content/DialogInterface$OnClickListener;

    .line 217
    new-instance v1, Lcom/sec/android/app/music/DrmServicePopup$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/DrmServicePopup$2;-><init>(Lcom/sec/android/app/music/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 233
    new-instance v1, Lcom/sec/android/app/music/DrmServicePopup$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/DrmServicePopup$3;-><init>(Lcom/sec/android/app/music/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    .line 251
    new-instance v1, Lcom/sec/android/app/music/DrmServicePopup$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/DrmServicePopup$4;-><init>(Lcom/sec/android/app/music/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 259
    new-instance v1, Lcom/sec/android/app/music/DrmServicePopup$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/DrmServicePopup$5;-><init>(Lcom/sec/android/app/music/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 268
    new-instance v1, Lcom/sec/android/app/music/DrmServicePopup$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/DrmServicePopup$6;-><init>(Lcom/sec/android/app/music/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 71
    iput-object p1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/DrmPopupData;

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/DrmPopupData;

    iget-object v1, v1, Lcom/sec/android/app/music/DrmPopupData;->popupStrings:[I

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/DrmPopupData;

    iget v1, v1, Lcom/sec/android/app/music/DrmPopupData;->popupType:I

    iput v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupType:I

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/DrmPopupData;

    iget-object v1, v1, Lcom/sec/android/app/music/DrmPopupData;->popupUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mUri:Landroid/net/Uri;

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/DrmPopupData;

    iget-object v1, v1, Lcom/sec/android/app/music/DrmPopupData;->popupFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->filePath:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/DrmPopupData;

    iget v1, v1, Lcom/sec/android/app/music/DrmPopupData;->remainCount:I

    iput v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->remainedCounts:I

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/DrmPopupData;

    iget v1, v1, Lcom/sec/android/app/music/DrmPopupData;->popupFrom:I

    iput v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupFrom:I

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/DrmPopupData;

    iget v1, v1, Lcom/sec/android/app/music/DrmPopupData;->position:I

    iput v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mPosition:I

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/DrmPopupData;

    iget-wide v1, v1, Lcom/sec/android/app/music/DrmPopupData;->id:J

    iput-wide v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mId:J

    .line 87
    new-instance v1, Lcom/sec/android/app/music/MusicDrmManager;

    invoke-direct {v1}, Lcom/sec/android/app/music/MusicDrmManager;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/MusicDrmManager;

    .line 88
    iput-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->filePath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, lastIndex:I
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->filePath:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->fileName:Ljava/lang/String;

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/music/DrmServicePopup;->createDialog()V

    .line 96
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f090059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->fileName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sec/android/app/music/DrmServicePopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/DrmServicePopup;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/DrmServicePopup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/music/DrmServicePopup;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/DrmServicePopup;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/sec/android/app/music/DrmServicePopup;->mId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/DrmServicePopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/android/app/music/DrmServicePopup;->mPosition:I

    return v0
.end method


# virtual methods
.method public createDialog()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v4, -0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    sget-object v1, Lcom/sec/android/app/music/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v2, "createDialog() is called"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    iput-boolean v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/DrmServicePopup;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    const v1, 0x1080027

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/DrmServicePopup;->setIcon(I)V

    .line 111
    iget v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupType:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 114
    :cond_0
    sget-object v1, Lcom/sec/android/app/music/DrmServicePopup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmServicePopup_[popupType]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupType:I

    sparse-switch v1, :sswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 117
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v2, v2, v5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/music/DrmServicePopup;->fileName:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, p0, Lcom/sec/android/app/music/DrmServicePopup;->remainedCounts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 176
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/DrmServicePopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/MusicDrmManager;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/music/MusicDrmManager;->setDrmPopupShown(Z)V

    goto :goto_0

    .line 127
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 137
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 142
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 152
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 157
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mBuyListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 164
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 169
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupStrings:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_6
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x14 -> :sswitch_7
    .end sparse-switch
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/app/music/DrmPopupActivity;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/music/DrmPopupActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/DrmPopupActivity;->finish()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/AudioPreviewDrmChecker;

    if-eqz v0, :cond_1

    .line 283
    iget-object p0, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/music/AudioPreviewDrmChecker;

    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->finish()V

    .line 284
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 101
    sget-object v0, Lcom/sec/android/app/music/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 181
    sget-object v1, Lcom/sec/android/app/music/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v2, "onStop() is called"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.metachanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 189
    return-void
.end method
