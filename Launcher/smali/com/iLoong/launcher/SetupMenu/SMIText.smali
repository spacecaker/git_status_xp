.class public Lcom/iLoong/launcher/SetupMenu/SMIText;
.super Landroid/widget/TextView;


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setItem(Lcom/iLoong/launcher/SetupMenu/a;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->SETUPMENU_FOLDERNAME:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/iLoong/launcher/SetupMenu/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SMIText;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/iLoong/launcher/SetupMenu/n;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SMIText;->a:Landroid/graphics/Bitmap;

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/SetupMenu/n;-><init>(Landroid/graphics/Bitmap;F)V

    invoke-virtual {p0, v3, v0, v3, v3}, Lcom/iLoong/launcher/SetupMenu/SMIText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/iLoong/launcher/SetupMenu/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/SMIText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/SetupMenu/SMIText;->setTag(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
