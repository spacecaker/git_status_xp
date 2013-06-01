.class public Lcom/iLoong/launcher/Widget3D/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iLoong/launcher/SetupMenu/d;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/iLoong/launcher/Widget3D/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/Widget3D/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/iLoong/launcher/Widget3D/m;
    .locals 2

    const-class v1, Lcom/iLoong/launcher/Widget3D/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/Widget3D/m;->b:Lcom/iLoong/launcher/Widget3D/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/Widget3D/m;

    invoke-direct {v0}, Lcom/iLoong/launcher/Widget3D/m;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/Widget3D/m;->b:Lcom/iLoong/launcher/Widget3D/m;

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/Widget3D/m;->b:Lcom/iLoong/launcher/Widget3D/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/a/f;Z)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x7

    const/4 v0, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object p0, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    sget-object v6, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget v6, v6, Lcom/iLoong/launcher/a/f;->l:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    invoke-static {v4}, Lcom/iLoong/launcher/Desktop3D/cb;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/iLoong/launcher/SetupMenu/p;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    const-string v2, "widget"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v1

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/m;->a()Lcom/iLoong/launcher/Widget3D/m;

    move-result-object v2

    invoke-virtual {v1, v0, v5, v4, v2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V

    :goto_1
    move v0, v3

    :cond_0
    :goto_2
    return v0

    :cond_1
    sget-object v6, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget v6, v6, Lcom/iLoong/launcher/a/f;->l:I

    if-ne v6, v8, :cond_6

    invoke-static {v4, v1}, Lcom/iLoong/launcher/Desktop3D/cb;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Widget3D/m;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/SetupMenu/p;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0073

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/iLoong/launcher/Widget3D/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_2

    :cond_4
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ar:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    iget v0, v0, Lcom/iLoong/launcher/a/f;->l:I

    if-ne v0, v8, :cond_5

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCannotFoundApkMsg()V

    :goto_3
    move v0, v3

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendDownloadWidgetMsg()V

    goto :goto_3

    :cond_6
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/SetupMenu/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Widget3D/m;->a(Ljava/lang/String;)V

    :goto_0
    return v6

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iLoong/launcher/SetupMenu/p;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0073

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Widget3D/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v0

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/m;->a()Lcom/iLoong/launcher/Widget3D/m;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/SetupMenu/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/iLoong/launcher/Widget3D/m;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "apk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "application/vnd.android.package-archive"

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p3, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/iLoong/launcher/Widget3D/m;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Widget3D/m;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendDownloadWidgetMsg()V

    goto :goto_0

    :cond_1
    const-string v0, "test"

    const-string v1, "WidgetDownload OnCheckedComplete curDownload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "test"

    const-string v1, "WidgetDownload OnCheckedComplete flag in unnormol"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iLoong/launcher/Widget3D/g;->c:Lcom/iLoong/launcher/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Widget3D/m;->a(Lcom/iLoong/launcher/a/f;Z)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lcom/iLoong/launcher/Desktop3D/cb;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    const v2, 0x7f0c002f

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
