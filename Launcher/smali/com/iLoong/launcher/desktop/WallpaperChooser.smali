.class public Lcom/iLoong/launcher/desktop/WallpaperChooser;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Landroid/widget/Gallery;

.field private d:Landroid/widget/ImageView;

.field private e:Z

.field private f:Landroid/graphics/Bitmap;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Lcom/iLoong/launcher/desktop/am;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->b:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(I)V
    .locals 8

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->b:Z

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iLoong/launcher/desktop/WallpaperChooser;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->e:Z

    :try_start_1
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const-string v2, "launcher"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "apply wallpaper live"

    invoke-static {v3}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-string v5, "apply_wallpaper_time"

    const-wide/16 v6, -0x1

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-gez v3, :cond_2

    invoke-static {v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apply_wallpaper_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->setResult(I)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.WallpaperChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to set wallpaper: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "wallpapers/"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto/16 :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/WallpaperChooser;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/WallpaperChooser;Lcom/iLoong/launcher/desktop/am;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->i:Lcom/iLoong/launcher/desktop/am;

    return-void
.end method

.method private b()V
    .locals 9

    const/16 v2, 0x18

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->g:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->h:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->ae:Ljava/lang/String;

    sput-object v2, Lcom/iLoong/launcher/desktop/WallpaperChooser;->a:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/iLoong/launcher/desktop/WallpaperChooser;->a:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->b:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    :try_start_0
    iget-boolean v1, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->b:Z

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    array-length v5, v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_3
    return-void

    :cond_2
    const-string v1, "wallpapers"

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_3
    aget-object v6, v2, v1

    const-string v7, "wallpaper"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "_small"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_5
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "_small"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v6, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic b(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->c:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->a(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->b()V

    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->setContentView(I)V

    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->c:Landroid/widget/Gallery;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->c:Landroid/widget/Gallery;

    new-instance v1, Lcom/iLoong/launcher/desktop/z;

    invoke-direct {v1, p0, p0}, Lcom/iLoong/launcher/desktop/z;-><init>(Lcom/iLoong/launcher/desktop/WallpaperChooser;Lcom/iLoong/launcher/desktop/WallpaperChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->c:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->c:Landroid/widget/Gallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->d:Landroid/widget/ImageView;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->i:Lcom/iLoong/launcher/desktop/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->i:Lcom/iLoong/launcher/desktop/am;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/am;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->i:Lcom/iLoong/launcher/desktop/am;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/am;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->i:Lcom/iLoong/launcher/desktop/am;

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->i:Lcom/iLoong/launcher/desktop/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->i:Lcom/iLoong/launcher/desktop/am;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/am;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->i:Lcom/iLoong/launcher/desktop/am;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/am;->a()V

    :cond_0
    new-instance v0, Lcom/iLoong/launcher/desktop/am;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/desktop/am;-><init>(Lcom/iLoong/launcher/desktop/WallpaperChooser;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/am;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/desktop/am;

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->i:Lcom/iLoong/launcher/desktop/am;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/WallpaperChooser;->e:Z

    return-void
.end method
