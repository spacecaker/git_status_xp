.class public Lcom/iLoong/launcher/Widget3D/o;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field A:Lcom/iLoong/launcher/UI3DEngine/d;

.field B:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public C:Z

.field public D:I

.field public E:I

.field public F:F

.field public G:F

.field public H:Z

.field protected I:F

.field private a:Lcom/iLoong/launcher/a/b;

.field public f:Landroid/content/pm/ResolveInfo;

.field protected h:Lcom/badlogic/gdx/backends/android/AndroidFiles;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Landroid/graphics/Bitmap;

.field public l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field protected t:F

.field protected u:F

.field v:Lcom/iLoong/launcher/UI3DEngine/d;

.field w:Lcom/iLoong/launcher/UI3DEngine/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iLoong/launcher/Widget3D/o;->p:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Widget3D/o;->q:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    iput v3, p0, Lcom/iLoong/launcher/Widget3D/o;->t:F

    iput v3, p0, Lcom/iLoong/launcher/Widget3D/o;->u:F

    iput-boolean v1, p0, Lcom/iLoong/launcher/Widget3D/o;->C:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Widget3D/o;->H:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/o;->I:F

    iput-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    iput-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->a:Lcom/iLoong/launcher/a/b;

    iput-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->h:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/iLoong/launcher/Widget3D/o;->p:Z

    iput-boolean v5, p0, Lcom/iLoong/launcher/Widget3D/o;->q:Z

    iput-boolean v5, p0, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    iput-boolean v5, p0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    iput v1, p0, Lcom/iLoong/launcher/Widget3D/o;->t:F

    iput v1, p0, Lcom/iLoong/launcher/Widget3D/o;->u:F

    iput-boolean v5, p0, Lcom/iLoong/launcher/Widget3D/o;->C:Z

    iput-boolean v5, p0, Lcom/iLoong/launcher/Widget3D/o;->H:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/o;->I:F

    new-instance v0, Lcom/iLoong/launcher/a/b;

    sget-object v1, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    invoke-direct {v0, p2, v1}, Lcom/iLoong/launcher/a/b;-><init>(Landroid/content/pm/ResolveInfo;Lcom/iLoong/launcher/app/ak;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->a:Lcom/iLoong/launcher/a/b;

    iput-object p2, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidFiles;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/backends/android/AndroidFiles;-><init>(Landroid/content/res/AssetManager;)V

    iput-object v1, p0, Lcom/iLoong/launcher/Widget3D/o;->h:Lcom/badlogic/gdx/backends/android/AndroidFiles;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "uninstallicon"

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/aj;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->v:Lcom/iLoong/launcher/UI3DEngine/d;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "resumeicon"

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/aj;->o:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->w:Lcom/iLoong/launcher/UI3DEngine/d;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "hideicon"

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/aj;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->f:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->A:Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v0, "widget-shortcut-bg"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->B:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HIDE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 11

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_9

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/app/ak;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->i:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/g;->a(Ljava/lang/String;)Lcom/iLoong/launcher/Widget3D/a;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/iLoong/launcher/Widget3D/a;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/iLoong/launcher/Widget3D/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->j:Ljava/lang/String;

    new-instance v9, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v10, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->i:Ljava/lang/String;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    iget v5, p0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/b;->a(Ljava/lang/String;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v9, p0, Lcom/iLoong/launcher/Widget3D/o;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/iLoong/launcher/Widget3D/a;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/iLoong/launcher/Widget3D/a;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v7, p0, Lcom/iLoong/launcher/Widget3D/o;->k:Landroid/graphics/Bitmap;

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "useTheme"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :cond_1
    const-string v0, "widget_ico.png"

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->f()Lcom/iLoong/launcher/theme/d;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/theme/d;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/theme/i;->f()Lcom/iLoong/launcher/theme/d;

    move-result-object v3

    iget-object v3, v3, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/Widget3D/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "iLoong"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/iLoong/launcher/Widget3D/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/image/widget_ico.png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->k:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/app/ak;->a(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->k:Landroid/graphics/Bitmap;

    :cond_7
    iget v0, v8, Lcom/iLoong/launcher/Widget3D/a;->d:I

    if-eq v0, v6, :cond_8

    iget v0, v8, Lcom/iLoong/launcher/Widget3D/a;->d:I

    if-eq v0, v6, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->k:Landroid/graphics/Bitmap;

    iget v1, v8, Lcom/iLoong/launcher/Widget3D/a;->d:I

    iget v2, v8, Lcom/iLoong/launcher/Widget3D/a;->e:I

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/g;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->k:Landroid/graphics/Bitmap;

    :cond_8
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->k:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->bmp2Pixmap(Landroid/graphics/Bitmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_9
    return-void

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_a

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_a
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public c()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 5

    const/high16 v4, 0x4000

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/g;->b(Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/Widget3D/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/o;->t:F

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/f;->width:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Widget3D/o;->u:F

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/f;->height:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Widget3D/f;->setPosition(FF)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/o;->d()Lcom/iLoong/launcher/Widget3D/o;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/iLoong/launcher/Widget3D/o;
    .locals 3

    new-instance v0, Lcom/iLoong/launcher/Widget3D/o;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/o;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/Widget3D/o;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 19

    sget-boolean v2, Lcom/iLoong/launcher/Widget3D/o;->debug:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/iLoong/launcher/Widget3D/o;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/iLoong/launcher/Widget3D/o;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->originX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Widget3D/o;->originY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/4 v8, 0x0

    cmpl-float v2, v2, v8

    if-nez v2, :cond_d

    const/high16 v8, 0x4348

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-nez v2, :cond_e

    const/high16 v9, 0x4348

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/Widget3D/o;->scaleX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/Widget3D/o;->scaleY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iLoong/launcher/Widget3D/o;->rotation:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v2, Lcom/iLoong/launcher/Widget3D/o;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v15

    sget-object v2, Lcom/iLoong/launcher/Widget3D/o;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v18}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Widget3D/o;->transform:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/iLoong/launcher/Widget3D/o;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iLoong/launcher/Widget3D/o;->p:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    if-eqz v3, :cond_13

    :cond_2
    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL

    mul-double/2addr v2, v4

    double-to-float v2, v2

    move v8, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Widget3D/o;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v5, v8, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual/range {p0 .. p1}, Lcom/iLoong/launcher/Widget3D/o;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aP:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->B:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Widget3D/o;->B:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    const/high16 v7, 0x3f80

    sget v9, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v7, v9

    mul-float/2addr v7, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->I:F

    mul-float/2addr v2, v3

    float-to-int v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->I:F

    mul-float/2addr v2, v3

    float-to-int v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    sub-float v3, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    const/high16 v4, 0x3f80

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    div-int/lit8 v4, v7, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    :cond_4
    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aQ:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/high16 v3, 0x41a0

    div-float v3, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    const/high16 v5, 0x3f80

    sget v9, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v5, v9

    mul-float/2addr v4, v5

    const/high16 v5, 0x41a0

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->I:F

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    move v4, v3

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Widget3D/o;->n:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    add-float/2addr v5, v2

    int-to-float v6, v6

    int-to-float v7, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    const/high16 v6, 0x3f80

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    const-string v2, "x"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/high16 v5, 0x4080

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float v2, v4, v2

    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_7

    const/4 v2, 0x0

    :cond_7
    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aU:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    const/high16 v6, 0x4080

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    mul-float/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    const/high16 v9, 0x4000

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    const/high16 v9, 0x3f80

    sget v10, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v9, v10

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    const/high16 v5, 0x4080

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    mul-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    const/high16 v7, 0x3f80

    sget v9, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v7, v9

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    const/high16 v6, 0x4080

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    add-float/2addr v5, v6

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    const/high16 v6, 0x3f80

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Widget3D/o;->p:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Widget3D/o;->q:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->v:Lcom/iLoong/launcher/UI3DEngine/d;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->v:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->v:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->v:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->v:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->v:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Widget3D/o;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->w:Lcom/iLoong/launcher/UI3DEngine/d;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->w:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->w:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->w:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->w:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->w:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Widget3D/o;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->A:Lcom/iLoong/launcher/UI3DEngine/d;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->A:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->A:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->width:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->A:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->A:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/d;->height:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->A:Lcom/iLoong/launcher/UI3DEngine/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Widget3D/o;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/iLoong/launcher/Widget3D/o;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    mul-float v2, v8, p2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Widget3D/o;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iLoong/launcher/Widget3D/o;->transform:Z

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p1}, Lcom/iLoong/launcher/Widget3D/o;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_c
    return-void

    :cond_d
    move-object/from16 v0, p0

    iget v8, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Widget3D/o;->B:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    const/high16 v7, 0x3f80

    sget v9, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    sub-float/2addr v7, v9

    mul-float/2addr v7, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Widget3D/o;->l:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    const/high16 v6, 0x4080

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    mul-float/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    const/high16 v9, 0x4000

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    const/high16 v5, 0x4080

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    mul-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    const/high16 v6, 0x4080

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->x:F

    add-float/2addr v5, v6

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Widget3D/o;->y:F

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->o:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iLoong/launcher/Widget3D/o;->m:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    goto/16 :goto_6

    :cond_12
    move v4, v3

    goto/16 :goto_4

    :cond_13
    move v8, v2

    goto/16 :goto_2
.end method

.method public e()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->f:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->p:Z

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->p:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HIDE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public onClick(FF)Z
    .locals 4

    const/4 v1, 0x1

    const-string v0, "Widget3DShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick:x,y="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HIDE:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/o;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iLoong/launcher/Widget3D/o;->s:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const v0, 0x7f0c00ad

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLongClick(FF)Z
    .locals 3

    const/high16 v2, 0x4000

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/o;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Widget3D/o;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/o;->t:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/o;->u:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/o;->width:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/o;->height:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Widget3D/o;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Widget3D/o;->setTag(Ljava/lang/Object;)V

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "long click:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/o;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/o;->t:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/o;->u:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/o;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 2

    const/high16 v1, 0x4000

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setSize(FF)V

    div-float v0, p1, v1

    div-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Widget3D/o;->setOrigin(FF)V

    return-void
.end method
