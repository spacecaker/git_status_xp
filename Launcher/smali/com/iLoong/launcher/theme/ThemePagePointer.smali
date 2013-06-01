.class public Lcom/iLoong/launcher/theme/ThemePagePointer;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    iput-boolean p2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->a:Z

    iput-object p1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->b:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "setupmenu/page_nv_focused.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "setupmenu/page_nv_normal.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "setupmenu/page_info_focused.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "setupmenu/page_info_normal.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->h:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-void
.end method

.method public final a(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->removeAllViews()V

    iput v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    iget-boolean v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/theme/ThemePagePointer;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-lt v0, p1, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->b(I)V

    return-void

    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/theme/ThemePagePointer;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->h:I

    return v0
.end method

.method public final b(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->a:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iput p1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    iget v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->invalidate()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_2
    iput p1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    iget v0, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/theme/ThemePagePointer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->c:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemePagePointer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
