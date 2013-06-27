.class public Lcom/sec/android/app/twlauncher/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/IconCache$1;,
        Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    }
.end annotation


# instance fields
.field private final mBubble:Lcom/sec/android/app/twlauncher/Utilities$BubbleText;

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/sec/android/app/twlauncher/LauncherApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/LauncherApplication;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/IconCache;->mCache:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/IconCache;->mContext:Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 54
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    new-instance v0, Lcom/sec/android/app/twlauncher/Utilities$BubbleText;

    invoke-direct {v0, p1}, Lcom/sec/android/app/twlauncher/Utilities$BubbleText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/IconCache;->mBubble:Lcom/sec/android/app/twlauncher/Utilities$BubbleText;

    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    .locals 3
    .parameter "componentName"
    .parameter "info"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;

    .line 141
    .local v0, entry:Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;

    .end local v0           #entry:Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;-><init>(Lcom/sec/android/app/twlauncher/IconCache$1;)V

    .line 144
    .restart local v0       #entry:Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 147
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 151
    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/IconCache;->mContext:Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 169
    :cond_1
    return-object v0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 60
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 61
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"
    .parameter "resolveInfo"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 130
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 131
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    monitor-exit v1

    move-object v1, v2

    .line 135
    :goto_0
    return-object v1

    .line 134
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;

    move-result-object v0

    .line 135
    .local v0, entry:Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    iget-object v2, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 136
    .end local v0           #entry:Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "intent"

    .prologue
    .line 115
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 116
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 117
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 119
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v3

    move-object v3, v4

    .line 124
    :goto_0
    return-object v3

    .line 123
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;

    move-result-object v1

    .line 124
    .local v1, entry:Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    iget-object v4, v1, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v3

    move-object v3, v4

    goto :goto_0

    .line 125
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #entry:Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getTitleAndIcon(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .parameter "application"
    .parameter "info"

    .prologue
    .line 92
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v3, p2}, Lcom/sec/android/app/twlauncher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;

    move-result-object v0

    .line 94
    .local v0, entry:Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->titleBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/IconCache;->mBubble:Lcom/sec/android/app/twlauncher/Utilities$BubbleText;

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Utilities$BubbleText;->createTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->titleBitmap:Landroid/graphics/Bitmap;

    .line 98
    :cond_0
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->title:Ljava/lang/String;

    iput-object v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 99
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->titleBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->titleBitmap:Landroid/graphics/Bitmap;

    .line 100
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 101
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;->iconBgBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBgBitmap:Landroid/graphics/Bitmap;

    .line 103
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 104
    .local v1, flag:I
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_1

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_2

    .line 106
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    .line 111
    :goto_0
    monitor-exit v2

    .line 112
    return-void

    .line 108
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    goto :goto_0

    .line 111
    .end local v0           #entry:Lcom/sec/android/app/twlauncher/IconCache$CacheEntry;
    .end local v1           #flag:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
