.class public Lcom/sec/android/app/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# static fields
.field protected static mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static calculatePicturesRemaining()I
    .locals 7

    .prologue
    .line 1035
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->hasStorage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1036
    const/4 v5, -0x1

    .line 1050
    :goto_0
    return v5

    .line 1038
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1040
    .local v4, storageDirectory:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v3, stat:Landroid/os/StatFs;
    const v0, 0x16e360

    .line 1042
    .local v0, PICTURE_BYTES:I
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v0

    div-float v2, v5, v6

    .line 1044
    .local v2, remaining:F
    float-to-int v5, v2

    goto :goto_0

    .line 1046
    .end local v0           #PICTURE_BYTES:I
    .end local v2           #remaining:F
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1050
    .local v1, ex:Ljava/lang/Exception;
    const/4 v5, -0x2

    goto :goto_0
.end method

.method public static closeDialog()V
    .locals 1

    .prologue
    .line 932
    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 934
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    .line 935
    return-void
.end method

.method public static confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "action"

    .prologue
    .line 912
    new-instance v1, Lcom/sec/android/app/camera/MenuHelper$19;

    invoke-direct {v1, p3}, Lcom/sec/android/app/camera/MenuHelper$19;-><init>(Ljava/lang/Runnable;)V

    .line 920
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 921
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 927
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    .line 928
    sget-object v2, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 929
    return-void
.end method

.method static deleteImage(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 1
    .parameter "activity"
    .parameter "onDelete"
    .parameter "image"

    .prologue
    .line 877
    invoke-static {p2}, Lcom/sec/android/app/camera/ImageManager;->isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/MenuHelper;->deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    .line 878
    return-void
.end method

.method static deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
    .locals 6
    .parameter "activity"
    .parameter "onDelete"
    .parameter "isImage"

    .prologue
    .line 882
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_gallery_confirm_delete_key"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 885
    .local v1, needConfirm:Z
    if-nez v1, :cond_1

    .line 886
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    const v3, 0x7f0700d8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 889
    .local v2, title:Ljava/lang/String;
    if-eqz p2, :cond_2

    const v3, 0x7f0700d6

    :goto_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, message:Ljava/lang/String;
    invoke-static {p0, v2, v0, p1}, Lcom/sec/android/app/camera/MenuHelper;->confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 889
    .end local v0           #message:Ljava/lang/String;
    :cond_2
    const v3, 0x7f0700d9

    goto :goto_1
.end method

.method static deletePhoto(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "activity"
    .parameter "onDelete"

    .prologue
    .line 868
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/MenuHelper;->deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    .line 869
    return-void
.end method

.method public static isDeleteDialogShow()Z
    .locals 1

    .prologue
    .line 938
    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 939
    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 941
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWhiteListUri(Landroid/net/Uri;)Z
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    if-nez p0, :cond_0

    move v3, v5

    .line 163
    :goto_0
    return v3

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, scheme:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, authority:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "media"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    .line 152
    goto :goto_0

    .line 155
    :cond_1
    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, p:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v6, :cond_2

    const-string v3, "sdcard"

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    .line 159
    goto :goto_0

    .end local v1           #p:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move v3, v5

    .line 163
    goto :goto_0
.end method

.method public static showStorageToast(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1011
    invoke-static {}, Lcom/sec/android/app/camera/MenuHelper;->calculatePicturesRemaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->showStorageToast(Landroid/app/Activity;I)V

    .line 1012
    return-void
.end method

.method public static showStorageToast(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "remaining"

    .prologue
    .line 1015
    const/4 v0, 0x0

    .line 1017
    .local v0, noStorageText:Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 1018
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, state:Ljava/lang/String;
    const-string v2, "checking"

    if-ne v1, v2, :cond_2

    .line 1020
    const v2, 0x7f070106

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1028
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1029
    const/16 v2, 0x1388

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1031
    :cond_1
    return-void

    .line 1022
    .restart local v1       #state:Ljava/lang/String;
    :cond_2
    const v2, 0x7f0700fa

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1024
    .end local v1           #state:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 1025
    const v2, 0x7f070103

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
