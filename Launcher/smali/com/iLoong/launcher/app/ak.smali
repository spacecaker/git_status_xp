.class public Lcom/iLoong/launcher/app/ak;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/graphics/Bitmap;

.field private static c:Landroid/content/pm/PackageManager;


# instance fields
.field private final b:Lcom/iLoong/launcher/desktop/iLoongApplication;

.field private final d:Lcom/iLoong/launcher/b/b;

.field private final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/desktop/iLoongApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/iLoong/launcher/app/ak;->b:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-virtual {p1}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/iLoong/launcher/b/b;

    invoke-direct {v0, p1}, Lcom/iLoong/launcher/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/app/ak;->d:Lcom/iLoong/launcher/b/b;

    invoke-static {}, Lcom/iLoong/launcher/app/ak;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/app/ak;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static a()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private b(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/app/j;
    .locals 5

    iget-object v0, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/j;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/cb;->e()Lcom/iLoong/launcher/Desktop3D/cb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Landroid/content/pm/ResolveInfo;)V

    iget-object v0, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/j;

    if-nez v0, :cond_1

    new-instance v0, Lcom/iLoong/launcher/app/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/app/j;-><init>(Lcom/iLoong/launcher/app/j;)V

    iget-object v1, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/app/j;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/iLoong/launcher/app/j;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/iLoong/launcher/app/j;->b:Ljava/lang/String;

    :cond_0
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    sget-object v2, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/app/ak;->b:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-static {v1, v2}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/app/j;->a:Landroid/graphics/Bitmap;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget v3, Lcom/iLoong/launcher/Desktop3D/cb;->ap:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/iLoong/launcher/app/j;->a:Landroid/graphics/Bitmap;

    sget v2, Lcom/iLoong/launcher/Desktop3D/cb;->ap:F

    invoke-static {v1, v2}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/app/j;->a:Landroid/graphics/Bitmap;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :try_start_0
    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/app/ak;->b(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/app/j;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/app/j;->a:Landroid/graphics/Bitmap;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/app/ak;->a:Landroid/graphics/Bitmap;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/iLoong/launcher/app/ak;->b(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/app/j;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/app/j;->a:Landroid/graphics/Bitmap;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method

.method public a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v1, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/pm/ResolveInfo;Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/j;

    if-nez v0, :cond_3

    new-instance v0, Lcom/iLoong/launcher/app/j;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/iLoong/launcher/app/j;-><init>(Lcom/iLoong/launcher/app/j;)V

    iget-object v2, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/app/j;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/iLoong/launcher/app/j;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/iLoong/launcher/app/j;->b:Ljava/lang/String;

    :cond_2
    iput-object p2, v0, Lcom/iLoong/launcher/app/j;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iput-object p2, v0, Lcom/iLoong/launcher/app/j;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/a/b;Landroid/content/pm/ResolveInfo;)V
    .locals 4

    iget-object v1, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/iLoong/launcher/a/b;->d:Landroid/content/ComponentName;

    invoke-direct {p0, v0, p2}, Lcom/iLoong/launcher/app/ak;->b(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/app/j;

    move-result-object v0

    iget-object v2, v0, Lcom/iLoong/launcher/app/j;->c:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/app/ak;->d:Lcom/iLoong/launcher/b/b;

    iget-object v3, v0, Lcom/iLoong/launcher/app/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/b/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/iLoong/launcher/app/j;->c:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, v0, Lcom/iLoong/launcher/app/j;->b:Ljava/lang/String;

    iput-object v2, p1, Lcom/iLoong/launcher/a/b;->o:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/iLoong/launcher/app/j;->c:Landroid/graphics/Bitmap;

    iput-object v2, p1, Lcom/iLoong/launcher/a/b;->a:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/iLoong/launcher/app/j;->a:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/iLoong/launcher/a/b;->c:Landroid/graphics/Bitmap;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/graphics/Bitmap;)Z
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/app/ak;->a:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/app/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/app/ak;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
