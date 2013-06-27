.class public Lcom/sec/android/app/music/MusicDrmManager;
.super Ljava/lang/Object;
.source "MusicDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bInitialed:Z

.field private bOmaDrmFile:Z

.field private constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

.field private drmInfo:[I

.field errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

.field private filePath:Ljava/lang/String;

.field private iResult:I

.field private isDrmPopupShown:Z

.field private manager:Landroid/drm/mobile2/OMADRMManager;

.field private options:Landroid/drm/mobile2/Drm2Options;

.field private popupType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sec/android/app/music/MusicDrmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->isDrmPopupShown:Z

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    .line 66
    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->bOmaDrmFile:Z

    .line 69
    iput-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 70
    iput-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->iResult:I

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->bInitialed:Z

    .line 73
    iput v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 299
    new-instance v0, Lcom/sec/android/app/music/MusicDrmManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicDrmManager$1;-><init>(Lcom/sec/android/app/music/MusicDrmManager;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 78
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/drm/mobile2/OMADRMManager;->setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V

    .line 80
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public InitDrmManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 175
    sget-object v0, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "InitDrmManager()is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 178
    iput-boolean v3, p0, Lcom/sec/android/app/music/MusicDrmManager;->bOmaDrmFile:Z

    .line 179
    iput-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->drmInfo:[I

    .line 180
    iput-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 181
    iput-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->iResult:I

    .line 183
    iput-boolean v3, p0, Lcom/sec/android/app/music/MusicDrmManager;->bInitialed:Z

    .line 184
    iput v3, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 185
    return-void
.end method

.method public IsDrmFile()Z
    .locals 4

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->bOmaDrmFile:Z

    .line 159
    .local v0, result:Z
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmFile is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v0
.end method

.method public IsDrmFile(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 85
    if-nez p1, :cond_0

    .line 86
    const-string v1, "MusicDrmManager:IsDrmFile() path==null"

    .line 87
    .local v1, msg:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicDrmManager;->InitDrmManager()V

    .line 96
    iput-object p1, p0, Lcom/sec/android/app/music/MusicDrmManager;->filePath:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->bOmaDrmFile:Z

    .line 99
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->bOmaDrmFile:Z

    if-eqz v2, :cond_1

    .line 100
    sget-object v2, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "IsDrmFile(): It is Drm File"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicDrmManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/drm/mobile2/OMADRMManager;->getDrmFileInfo(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->drmInfo:[I

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicDrmManager;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->iResult:I

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicDrmManager;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/drm/mobile2/OMADRMManager;->getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    .line 108
    sget-object v2, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "IsDrmFile(): drmInfo[DrmVersion:%d],[DrmType:%d],iResult=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/music/MusicDrmManager;->drmInfo:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/music/MusicDrmManager;->drmInfo:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/sec/android/app/music/MusicDrmManager;->iResult:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->iResult:I

    if-nez v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->manager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicDrmManager;->filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/drm/mobile2/OMADRMManager;->getOptionMenu(Ljava/lang/String;I)Landroid/drm/mobile2/Drm2Options;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    if-eqz v2, :cond_2

    .line 117
    sget-object v2, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "DrmManager():bMusic=%s,bRingtone=%s,bBluetooth=%s,bPreview=%s,bSendAs=%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/music/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bMusic:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/music/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/music/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bBluetooth:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/music/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bPreview:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/sec/android/app/music/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    iget-boolean v6, v6, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 147
    :cond_1
    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/music/MusicDrmManager;->bInitialed:Z

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicDrmManager;->IsDrmFile()Z

    move-result v2

    return v2

    .line 126
    :cond_2
    :try_start_1
    sget-object v2, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "DrmManager():manager.getOptionMenu == null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 135
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "IsDrmFile() FileNotFoundException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    throw v0

    .line 137
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 140
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    sget-object v2, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "IsDrmFile() OMADRMException "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 144
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "IsDrmFile() IOException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrmPopup(Z[I[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I
    .locals 9
    .parameter "bOnRequestByList"
    .parameter "popupStrings"
    .parameter "button"

    .prologue
    const/4 v8, 0x3

    const v4, 0x7f090011

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmPopup("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->bInitialed:Z

    if-nez v1, :cond_0

    .line 194
    const-string v0, "MusicDrmManager:setDrmPopup() it did not be initialized"

    .line 195
    .local v0, msg:Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    iput v5, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 203
    iget-boolean v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->bOmaDrmFile:Z

    if-eqz v1, :cond_1

    .line 204
    iget v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->iResult:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    if-eqz v1, :cond_3

    .line 205
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Valid"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v1, v1, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    if-ne v1, v6, :cond_2

    .line 207
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Count"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v1, v1, Landroid/drm/mobile2/DrmBestRights;->curCount:I

    if-gt v1, v7, :cond_1

    .line 209
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Count<=2"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const v1, 0x7f090010

    aput v1, p2, v5

    .line 211
    const v1, 0x7f09000f

    aput v1, p2, v6

    .line 212
    iput v6, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 213
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_PLAY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 214
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    .line 273
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "setDrmPopup(): popupStrings=%d,%d,popupType=%d"

    new-array v3, v8, [Ljava/lang/Object;

    aget v4, p2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aget v4, p2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    return v1

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v1, v1, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 217
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Interval"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget-object v1, v1, Landroid/drm/mobile2/DrmBestRights;->orgIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget-object v1, v1, Landroid/drm/mobile2/DrmBestRights;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget-object v1, v1, Landroid/drm/mobile2/DrmBestRights;->orgIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget-object v2, v2, Landroid/drm/mobile2/DrmBestRights;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    invoke-virtual {v2}, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Interval, first time"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const v1, 0x7f090032

    aput v1, p2, v5

    .line 224
    const v1, 0x7f09000f

    aput v1, p2, v6

    .line 225
    iput v7, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 226
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_PLAY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 227
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto :goto_0

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->drmInfo:[I

    if-eqz v1, :cond_9

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-nez v1, :cond_4

    .line 233
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, FL"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const v1, 0x7f09000e

    aput v1, p2, v5

    .line 235
    const/16 v1, 0xd

    iput v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 236
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-ne v1, v6, :cond_6

    .line 238
    if-ne p1, v6, :cond_5

    .line 239
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, CD, List"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    aput v4, p2, v5

    .line 241
    const v1, 0x7f09000c

    aput v1, p2, v6

    .line 242
    const/16 v1, 0xe

    iput v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 243
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_DELETE_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 244
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto/16 :goto_0

    .line 246
    :cond_5
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, CD, Not List"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    aput v4, p2, v5

    .line 248
    const/16 v1, 0xf

    iput v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 249
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0

    .line 251
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-eq v1, v8, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->drmInfo:[I

    aget v1, v1, v6

    if-ne v1, v7, :cond_8

    .line 252
    :cond_7
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid, SD, SSD"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const v1, 0x7f090008

    aput v1, p2, v5

    .line 254
    const/16 v1, 0x10

    iput v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 255
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_BUY_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    .line 256
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_CANCEL_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v6

    goto/16 :goto_0

    .line 258
    :cond_8
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup() OmaDrm, Invalid"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    aput v4, p2, v5

    .line 260
    const/16 v1, 0xb

    iput v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 261
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0

    .line 264
    :cond_9
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "getDrmPopup(): drmInfo==null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    aput v4, p2, v5

    .line 267
    const/16 v1, 0xb

    iput v1, p0, Lcom/sec/android/app/music/MusicDrmManager;->popupType:I

    .line 268
    sget-object v1, Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v1, p3, v5

    goto/16 :goto_0
.end method

.method public getOptionInfo()Landroid/drm/mobile2/Drm2Options;
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "getOptionInfo()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->options:Landroid/drm/mobile2/Drm2Options;

    return-object v0
.end method

.method public getRemainedCounts()I
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v0, v0, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 291
    sget-object v0, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemainedCounts()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v2, v2, Landroid/drm/mobile2/DrmBestRights;->curCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/music/MusicDrmManager;->constraintsInfo:Landroid/drm/mobile2/DrmBestRights;

    iget v0, v0, Landroid/drm/mobile2/DrmBestRights;->curCount:I

    .line 295
    :goto_0
    return v0

    .line 294
    :cond_0
    sget-object v0, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "getRemainedCounts(): constraintsInfo==null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setDrmPopupShown(Z)V
    .locals 3
    .parameter "bPopup"

    .prologue
    .line 313
    sget-object v0, Lcom/sec/android/app/music/MusicDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrmPopupShown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicDrmManager;->isDrmPopupShown:Z

    .line 316
    return-void
.end method
