.class public Lcom/iLoong/launcher/desktop/iLoongApplication;
.super Landroid/app/Application;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Landroid/content/Context;

.field public static c:Z

.field public static e:Lcom/iLoong/launcher/app/ak;


# instance fields
.field public d:Lcom/iLoong/launcher/app/LauncherModel;

.field f:Ljava/lang/ref/WeakReference;

.field public g:Lcom/iLoong/launcher/theme/i;

.field private h:Z

.field private i:Lcom/iLoong/launcher/b/a;

.field private final j:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "error.log"

    sput-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/iLoong/launcher/desktop/ay;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/ay;-><init>(Lcom/iLoong/launcher/desktop/iLoongApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->j:Landroid/database/ContentObserver;

    return-void
.end method

.method public static b()Lcom/iLoong/launcher/desktop/iLoongApplication;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/iLoong/launcher/desktop/iLoongApplication;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/cooee/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->ak:Z

    if-eqz v1, :cond_1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->aj:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/cooee/download/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/cooee/backup/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/app/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->d:Lcom/iLoong/launcher/app/LauncherModel;

    return-object v0
.end method

.method public a(Lcom/iLoong/launcher/app/LauncherProvider;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->h:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->h:Z

    return v0
.end method

.method public c()Lcom/iLoong/launcher/app/ak;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    return-object v0
.end method

.method public d()Lcom/iLoong/launcher/app/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->d:Lcom/iLoong/launcher/app/LauncherModel;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "0"

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "error.log"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->a:Ljava/lang/String;

    :cond_0
    iput-boolean v2, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->h:Z

    new-instance v0, Lcom/iLoong/launcher/b/a;

    sget-object v2, Lcom/iLoong/launcher/desktop/iLoongApplication;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/iLoong/launcher/b/a;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->i:Lcom/iLoong/launcher/b/a;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->i:Lcom/iLoong/launcher/b/a;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "iLoongApplication"

    const-string v2, "\u5e94\u7528\u7a0b\u5e8f\u542f\u52a8"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iLoong/launcher/app/ak;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/app/ak;-><init>(Lcom/iLoong/launcher/desktop/iLoongApplication;)V

    sput-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    new-instance v0, Lcom/iLoong/launcher/app/LauncherModel;

    sget-object v2, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    invoke-direct {v0, p0, v2}, Lcom/iLoong/launcher/app/LauncherModel;-><init>(Lcom/iLoong/launcher/desktop/iLoongApplication;Lcom/iLoong/launcher/app/ak;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->d:Lcom/iLoong/launcher/app/LauncherModel;

    new-instance v0, Lcom/iLoong/launcher/theme/i;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/theme/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->g:Lcom/iLoong/launcher/theme/i;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->d:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->d:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->d:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/iLoong/launcher/app/k;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0
.end method

.method public onTerminate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->d:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongApplication;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
