.class public Landroid/drm/mobile2/OMADRMManager;
.super Ljava/lang/Object;
.source "OMADRMManager.java"

# interfaces
.implements Landroid/drm/mobile2/DRMConstants;
.implements Landroid/drm/mobile2/DRMROAPConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/OMADRMManager$OnErrorListener;,
        Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;,
        Landroid/drm/mobile2/OMADRMManager$OnRoapListener;
    }
.end annotation


# static fields
.field private static OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private TAG:Ljava/lang/String;

.field mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

.field mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

.field mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

.field private rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

.field private roapManager:Landroid/drm/mobile2/DrmRoapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    .line 25
    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    .line 24
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    .line 27
    const-string v0, "SISODRM"

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/drm/mobile2/DrmRoapManager;

    invoke-direct {v0, p0}, Landroid/drm/mobile2/DrmRoapManager;-><init>(Landroid/drm/mobile2/OMADRMManager;)V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    .line 35
    new-instance v0, Landroid/drm/mobile2/Drm2RightsManager;

    invoke-direct {v0, p0}, Landroid/drm/mobile2/Drm2RightsManager;-><init>(Landroid/drm/mobile2/OMADRMManager;)V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    .line 36
    return-void
.end method

.method private checkDRMAccessPerissions()V
    .locals 4

    .prologue
    .line 1262
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_DRM"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing OMADRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/drm/mobile2/OMADRMManager;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/drm/mobile2/OMADRMManager;

    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMManager;-><init>()V

    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    .line 51
    :cond_0
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    return-object v0
.end method

.method private launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "rightsURI"

    .prologue
    .line 738
    if-eqz p1, :cond_0

    .line 740
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 741
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 743
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 744
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 745
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "This is NOT proper URL to get rights , so Browser can not be launched."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resolveDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mimetype"

    .prologue
    .line 530
    const-string v0, "audio/midi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/mid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/x-midi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/x-midi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/x-mid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/sp-midi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    const-string v0, "audio/unsupported"

    .line 542
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public GetPermissionType(Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v1, -0x1

    .line 413
    .local v1, status:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 414
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 415
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetPermissionTypeFromDrmFile(Ljava/lang/String;)I

    move-result v1

    .line 425
    :goto_0
    return v1

    .line 419
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public IsDrmFileByExt(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1024
    const/4 v1, 0x0

    .line 1025
    .local v1, status:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1027
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 1028
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 1029
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v1

    .line 1037
    :cond_0
    return v1

    .line 1032
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public acquireLicense(Landroid/content/Context;Ljava/lang/String;Landroid/drm/mobile2/DCFHeaderInfo;)Z
    .locals 8
    .parameter "context"
    .parameter "filePath"
    .parameter "dcfHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 672
    const/4 v2, 0x0

    .line 673
    .local v2, result:Z
    const/4 v3, 0x0

    .line 674
    .local v3, rightsURI:Ljava/lang/String;
    const/4 v4, -0x1

    .line 675
    .local v4, roamingDownload:I
    const/4 v1, 0x0

    .line 687
    .local v1, isRoaming:Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".DCF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".dcf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 689
    :cond_1
    move-object v0, p3

    .line 690
    .local v0, headerInfo:Landroid/drm/mobile2/DCFHeaderInfo;
    if-eqz v0, :cond_b

    .line 691
    iget-object v3, v0, Landroid/drm/mobile2/DCFHeaderInfo;->rightsIssuerURL:Ljava/lang/String;

    .line 692
    if-eqz v3, :cond_a

    .line 693
    iget v5, v0, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    if-ne v5, v7, :cond_4

    .line 694
    invoke-direct {p0, p1, v3}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 695
    const/4 v2, 0x0

    .line 725
    :cond_2
    :goto_0
    return v2

    .line 697
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 698
    :cond_4
    iget v5, v0, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 699
    iget-boolean v5, v0, Landroid/drm/mobile2/DCFHeaderInfo;->hasSilentHeader:Z

    if-eqz v5, :cond_6

    if-eqz v1, :cond_5

    if-eqz v1, :cond_6

    if-eq v4, v7, :cond_6

    .line 700
    :cond_5
    iget-object v5, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v5, :cond_2

    .line 701
    iget-object v5, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v5, p2}, Landroid/drm/mobile2/DrmRoapManager;->Drm2GoSilentURL(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 704
    :cond_6
    invoke-direct {p0, p1, v3}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 705
    const/4 v2, 0x0

    goto :goto_0

    .line 707
    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    .line 710
    :cond_8
    invoke-direct {p0, p1, v3}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 711
    const/4 v2, 0x0

    goto :goto_0

    .line 713
    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    .line 716
    :cond_a
    new-instance v5, Landroid/drm/mobile2/OMADRMException;

    const-string v6, "RIGHTS URI is not Found"

    invoke-direct {v5, v6}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 719
    :cond_b
    new-instance v5, Landroid/drm/mobile2/OMADRMException;

    const-string v6, "DCF File Header Information Can not be Retrieved"

    invoke-direct {v5, v6}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 723
    .end local v0           #headerInfo:Landroid/drm/mobile2/DCFHeaderInfo;
    :cond_c
    new-instance v5, Landroid/drm/mobile2/OMADRMException;

    const-string v6, "Invalid File Path"

    invoke-direct {v5, v6}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public addDrmFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 75
    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 76
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 77
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->addDrmFile(Ljava/lang/String;)Z

    move-result v1

    .line 85
    :cond_0
    return v1

    .line 82
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : addDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public audoDownloadLicense(Z)Z
    .locals 1
    .parameter "autoDownlaod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1108
    const/4 v0, 0x0

    return v0
.end method

.method public canSetAsRingTone(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1140
    const/4 v2, 0x0

    .line 1141
    .local v2, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1142
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 1143
    .local v1, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v0, :cond_1

    .line 1144
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 1145
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1}, Landroid/drm/mobile2/Drm2RightsManager;->canSetAsRingTone(Ljava/lang/String;)Z

    move-result v2

    .line 1151
    :cond_0
    return v2

    .line 1148
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not present "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public cancelRoapProcess()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 832
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/DrmRoapManager;->cancelRoapProcess()Z

    move-result v0

    .line 835
    .local v0, status:Z
    return v0
.end method

.method public clearDrmLicenses()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1459
    const/4 v0, 0x0

    .line 1460
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1461
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ClearAllRights()Z

    move-result v0

    .line 1464
    :cond_0
    return v0
.end method

.method public clearMMCFilesDRMEntry()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1475
    const/4 v0, 0x0

    .line 1476
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1477
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ClearMMCContentRegistry()Z

    move-result v0

    .line 1480
    :cond_0
    return v0
.end method

.method public closeDrmFile(J)Z
    .locals 3
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1437
    const/4 v0, 0x0

    .line 1438
    .local v0, result:Z
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 1439
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1440
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->closeDrmFile(J)Z

    move-result v0

    .line 1448
    :cond_0
    return v0

    .line 1445
    :cond_1
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : closeDrmFile : in : handle : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "filehandle is NULL"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public consumeDrmRights(Ljava/lang/String;I)I
    .locals 4
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v1, -0x1

    .line 225
    .local v1, result:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 226
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 227
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->consumeDrmRights(Ljava/lang/String;I)I

    move-result v1

    .line 235
    :cond_0
    return v1

    .line 232
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : consumeDrmRights : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 144
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 145
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_0
    return-object v1

    .line 150
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : convertDM2DCF : in : file :NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteDrmFile(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "filePath"
    .parameter "removeRights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 111
    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 112
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 113
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->deleteDrmFile(Ljava/lang/String;Z)Z

    move-result v1

    .line 121
    :cond_0
    return v1

    .line 118
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : deleteDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "srcFilePath"
    .parameter "destFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    const/4 v0, 0x0

    .line 883
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 887
    :cond_0
    return v0
.end method

.method public drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "srcFilePath"
    .parameter "destFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 861
    :cond_0
    return v0
.end method

.method public getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;
    .locals 6
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 329
    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    .line 330
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 331
    new-instance v0, Landroid/drm/mobile2/DrmBestRights;

    .end local v0           #drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    invoke-direct {v0}, Landroid/drm/mobile2/DrmBestRights;-><init>()V

    .line 332
    .restart local v0       #drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, v0, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetBestMergedRO(Ljava/lang/String;Landroid/drm/mobile2/DrmBestRights;I)Z

    move-result v2

    .line 333
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 342
    .end local v2           #result:Z
    :cond_0
    return-object v0

    .line 340
    :cond_1
    new-instance v3, Landroid/drm/mobile2/OMADRMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is not present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
    .locals 5
    .parameter "dcfFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    const/4 v0, 0x0

    .line 939
    .local v0, dcfHeader:Landroid/drm/mobile2/DCFHeaderInfo;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 941
    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    .line 942
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v2, :cond_0

    .line 943
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/DrmRoapManager;->getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_0

    .line 967
    :cond_0
    return-object v0

    .line 962
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDRMRingToneAlarmInfo(Landroid/content/Context;)I
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1225
    const/4 v0, 0x0

    .line 1226
    .local v0, result:I
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1227
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRTAlarmInfo(Landroid/content/Context;)I

    move-result v0

    .line 1231
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getDecryptedContent(Ljava/lang/String;I)[B
    .locals 4
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, result:[B
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 268
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 269
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    .line 278
    :cond_0
    return-object v1

    .line 274
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : getDecryptedContent : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDrmFileInfo(Ljava/lang/String;)[I
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 995
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 996
    .local v1, isFileExists:Z
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 997
    .local v0, drmInfo:[I
    if-eqz v1, :cond_1

    .line 998
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 999
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, v0}, Landroid/drm/mobile2/Drm2RightsManager;->getDrmFileInfo(Ljava/lang/String;[I)V

    .line 1007
    :cond_0
    return-object v0

    .line 1002
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 192
    .local v0, filePath:Ljava/lang/String;
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2GetAllFilePathByCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    return-object v0
.end method

.method public getMetaData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, metaData:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 561
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 562
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 563
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->getMetaData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 570
    :cond_0
    return-object v1

    .line 566
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, mimetype:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 512
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 513
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 514
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/drm/mobile2/OMADRMManager;->resolveDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    :cond_0
    return-object v1

    .line 520
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOptionMenu(Ljava/lang/String;I)Landroid/drm/mobile2/Drm2Options;
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    const/4 v2, 0x0

    .line 1056
    .local v2, status:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1057
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 1058
    .local v1, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v0, :cond_2

    .line 1059
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 1060
    new-instance v1, Landroid/drm/mobile2/Drm2Options;

    .end local v1           #options:Landroid/drm/mobile2/Drm2Options;
    invoke-direct {v1}, Landroid/drm/mobile2/Drm2Options;-><init>()V

    .line 1061
    .restart local v1       #options:Landroid/drm/mobile2/Drm2Options;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, v1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetOptionMenu(Ljava/lang/String;Landroid/drm/mobile2/Drm2Options;I)Z

    move-result v2

    .line 1062
    if-eqz v2, :cond_1

    .line 1063
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v4, "OMADRMManager :getOptionMenu  : success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_0
    :goto_0
    return-object v1

    .line 1066
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1070
    :cond_2
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "File is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, rightsURI:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 483
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 484
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    :cond_0
    return-object v1

    .line 488
    :cond_1
    new-instance v2, Landroid/drm/mobile2/OMADRMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not Present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasValidRights(Ljava/lang/String;I)I
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v1, -0x1

    .line 375
    .local v1, status:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 376
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 377
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2HasValidRight(Ljava/lang/String;I)I

    move-result v1

    .line 387
    :goto_0
    return v1

    .line 381
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initOmaDrm(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0}, Landroid/drm/mobile2/DrmRoapManager;->native_drm_init()Z

    .line 1120
    return-void
.end method

.method public installDrmRights([B)Ljava/lang/String;
    .locals 2
    .parameter "rightData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->installDrmRights([B)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    return-object v0
.end method

.method public isConvertedFL(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 296
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 297
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2IsConvertedFL(Ljava/lang/String;)Z

    move-result v1

    .line 305
    :cond_0
    return v1

    .line 303
    :cond_1
    new-instance v2, Landroid/drm/mobile2/OMADRMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openDrmFile(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "filePath"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1301
    const-wide/16 v1, -0x1

    .line 1304
    .local v1, result:J
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1305
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 1306
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 1307
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->openDrmFile(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 1314
    :cond_0
    return-wide v1

    .line 1312
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "file is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processRoap(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .parameter "roapTrigger"
    .parameter "fileName"
    .parameter "fileSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 788
    const/4 v6, 0x0

    .line 790
    .local v6, roapResult:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 791
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/drm/mobile2/DrmRoapManager;->processRoap(Ljava/lang/String;ILjava/lang/String;J)Z

    move-result v6

    .line 795
    :cond_0
    return v6
.end method

.method public processRoap([B)Z
    .locals 3
    .parameter "roapPdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 811
    const/4 v0, 0x0

    .line 813
    .local v0, roapResult:Z
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 814
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    array-length v2, p1

    invoke-virtual {v1, p1, v2}, Landroid/drm/mobile2/DrmRoapManager;->processRoap([BI)Z

    move-result v0

    .line 817
    :cond_0
    return v0
.end method

.method public queryRights(Ljava/lang/String;)Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 448
    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    .line 449
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v3, :cond_0

    .line 451
    new-instance v0, Landroid/drm/mobile2/OMADRMConstraintsInfo;

    .end local v0           #drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMConstraintsInfo;-><init>()V

    .line 452
    .restart local v0       #drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v3, p1, v0}, Landroid/drm/mobile2/DrmRoapManager;->queryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z

    move-result v2

    .line 453
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 462
    .end local v2           #result:Z
    :cond_0
    return-object v0

    .line 459
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is not present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readDrmFile(J[BJ)J
    .locals 8
    .parameter "fh"
    .parameter "buffer"
    .parameter "buflen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1334
    const-wide/16 v6, -0x1

    .line 1337
    .local v6, result:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 1338
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/drm/mobile2/Drm2RightsManager;->readDrmFile(J[BJ)J

    move-result-wide v6

    .line 1346
    :cond_0
    return-wide v6

    .line 1343
    :cond_1
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : openDrmFile : in : file : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file handle is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    const/4 v0, 0x0

    .line 1205
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1206
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->removeFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1210
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public seekDrmFile(JJJ)Z
    .locals 8
    .parameter "fh"
    .parameter "position"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1373
    const/4 v7, 0x0

    .line 1376
    .local v7, result:Z
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 1377
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->seekDrmFile(JJJ)Z

    move-result v7

    .line 1385
    :cond_0
    return v7

    .line 1382
    :cond_1
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : seekDrmFile : in : file : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file handle is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1173
    const/4 v0, 0x0

    .line 1176
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1177
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->setFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1182
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setOnDownloadListener(Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1598
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    .line 1599
    return-void
.end method

.method public setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1626
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 1627
    return-void
.end method

.method public setOnRoapListener(Landroid/drm/mobile2/OMADRMManager$OnRoapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1539
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    .line 1540
    return-void
.end method

.method public setSecureClock(IIIIII)Z
    .locals 8
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 597
    const/4 v7, 0x0

    .line 598
    .local v7, result:Z
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->setSecureClock(IIIIII)Z

    move-result v7

    .line 603
    :cond_0
    return v7
.end method

.method public setTransferTracking(Z)Z
    .locals 2
    .parameter "trackingOn"

    .prologue
    .line 1277
    const/4 v0, 0x0

    .line 1279
    .local v0, settrackRet:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->setTransferTracking(Z)Z

    move-result v0

    .line 1282
    return v0
.end method

.method public submitUserConsent(JZZ)V
    .locals 1
    .parameter "userConsentObject"
    .parameter "bcontinue"
    .parameter "bAddToTrustedWhiteList"

    .prologue
    .line 911
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/drm/mobile2/DrmRoapManager;->SubmitUserConsent(JZZ)V

    .line 916
    :cond_0
    return-void
.end method

.method public tellDrmFile(J)J
    .locals 4
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1406
    const-wide/16 v0, -0x1

    .line 1409
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    .line 1410
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 1411
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->tellDrmFile(J)J

    move-result-wide v0

    .line 1418
    :cond_0
    return-wide v0

    .line 1415
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : tellDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file handle is null"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateDRMRingToneAlarmInfo(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "AlarmID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1246
    const/4 v0, 0x0

    .line 1247
    .local v0, result:I
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1248
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->updateRTAlarm(Landroid/content/Context;I)I

    move-result v0

    .line 1252
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public updateMeteringStatus(Z)Z
    .locals 1
    .parameter "meteringStatus"

    .prologue
    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method public updateSecureClock(JJ)Z
    .locals 2
    .parameter "beforeTime"
    .parameter "afterTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/drm/mobile2/Drm2RightsManager;->drm2UpdateSecureClock(JJ)Z

    move-result v0

    .line 630
    :cond_0
    return v0
.end method
