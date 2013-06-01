.class Lcom/iLoong/launcher/desktop/am;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Landroid/graphics/BitmapFactory$Options;

.field final synthetic b:Lcom/iLoong/launcher/desktop/WallpaperChooser;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/WallpaperChooser;)V
    .locals 2

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/am;->b:Lcom/iLoong/launcher/desktop/WallpaperChooser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/am;->a:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->a:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->a:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/am;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->b:Lcom/iLoong/launcher/desktop/WallpaperChooser;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->b(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->b:Lcom/iLoong/launcher/desktop/WallpaperChooser;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->c(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v2

    :goto_1
    :try_start_2
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->b:Lcom/iLoong/launcher/desktop/WallpaperChooser;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "wallpapers/"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->b:Lcom/iLoong/launcher/desktop/WallpaperChooser;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->c(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/am;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->a:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v0, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->b:Lcom/iLoong/launcher/desktop/WallpaperChooser;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->d(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->b:Lcom/iLoong/launcher/desktop/WallpaperChooser;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->d(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->b:Lcom/iLoong/launcher/desktop/WallpaperChooser;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->e(Lcom/iLoong/launcher/desktop/WallpaperChooser;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/am;->b:Lcom/iLoong/launcher/desktop/WallpaperChooser;

    invoke-static {v1, p1}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->a(Lcom/iLoong/launcher/desktop/WallpaperChooser;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->postInvalidate()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/am;->b:Lcom/iLoong/launcher/desktop/WallpaperChooser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/WallpaperChooser;->a(Lcom/iLoong/launcher/desktop/WallpaperChooser;Lcom/iLoong/launcher/desktop/am;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/desktop/am;->a([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/desktop/am;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
