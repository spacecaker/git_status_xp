.class public Lcom/iLoong/launcher/Widget3D/i;
.super Lcom/iLoong/launcher/Widget3D/o;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field public static c:I

.field public static d:I

.field public static e:I


# instance fields
.field private J:Lcom/iLoong/launcher/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    sput-object v0, Lcom/iLoong/launcher/Widget3D/i;->a:Ljava/lang/String;

    const-string v0, "vnd.android.cursor.dir/contact"

    sput-object v0, Lcom/iLoong/launcher/Widget3D/i;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/iLoong/launcher/Widget3D/i;->c:I

    const/4 v0, 0x1

    sput v0, Lcom/iLoong/launcher/Widget3D/i;->d:I

    const/4 v0, 0x2

    sput v0, Lcom/iLoong/launcher/Widget3D/i;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Widget3D/o;-><init>(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/iLoong/launcher/Widget3D/i;->q:Z

    const-string v0, "com.iLoong.widget.contact"

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->o:Ljava/lang/String;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "resumeicon"

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/aj;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->w:Lcom/iLoong/launcher/UI3DEngine/d;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "hideicon"

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/aj;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->A:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HIDE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/i;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/i;->s:Z

    const-string v0, "widget-shortcut-bg"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->B:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/i;->I:F

    return-void
.end method

.method public static a(Landroid/content/Intent;)I
    .locals 2

    if-nez p0, :cond_0

    sget v0, Lcom/iLoong/launcher/Widget3D/i;->c:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/Widget3D/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/iLoong/launcher/Widget3D/i;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts.action.QUICK_CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/iLoong/launcher/Widget3D/i;->e:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/iLoong/launcher/Widget3D/i;->c:I

    goto :goto_0
.end method

.method public static b()Lcom/iLoong/launcher/a/f;
    .locals 5

    new-instance v0, Lcom/iLoong/launcher/a/f;

    invoke-direct {v0}, Lcom/iLoong/launcher/a/f;-><init>()V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->aY:Ljava/lang/String;

    iput-object v1, v0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/iLoong/launcher/Widget3D/i;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.contacts"

    const-string v4, "com.android.contacts.ContactShortcut"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object v1, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->aY:Ljava/lang/String;

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->i:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    new-instance v0, Ljava/lang/StringBuilder;

    aget v1, v7, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v7, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->j:Ljava/lang/String;

    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v9, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->i:Ljava/lang/String;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/i;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/i;->height:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v6, -0x1

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/b;->a(Ljava/lang/String;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v8, p0, Lcom/iLoong/launcher/Widget3D/i;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Ljava/lang/StringBuilder;

    aget v2, v7, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Ljava/lang/StringBuilder;

    aget v2, v7, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->k:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v1, "theme/iconbg/contactperson-icon.png"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->k:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/i;->k:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->J:Lcom/iLoong/launcher/a/f;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/i;->b()Lcom/iLoong/launcher/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/i;->J:Lcom/iLoong/launcher/a/f;

    :cond_2
    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public c()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 5

    const/high16 v4, 0x4000

    new-instance v0, Lcom/iLoong/launcher/a/f;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/i;->J:Lcom/iLoong/launcher/a/f;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/a/f;-><init>(Lcom/iLoong/launcher/a/f;)V

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/aj;

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/at;->aY:Ljava/lang/String;

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/at;->aY:Ljava/lang/String;

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/i;->t:F

    iget v2, v1, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/i;->u:F

    iget v3, v1, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/Desktop3D/aj;->setPosition(FF)V

    return-object v1
.end method
