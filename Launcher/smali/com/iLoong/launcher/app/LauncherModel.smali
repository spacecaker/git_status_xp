.class public Lcom/iLoong/launcher/app/LauncherModel;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final B:Ljava/text/Collator;

.field public static g:Z

.field public static h:Z

.field public static final i:Ljava/util/Comparator;

.field private static final q:Landroid/os/HandlerThread;

.field private static final r:Landroid/os/Handler;


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field final a:Ljava/util/ArrayList;

.field final b:Ljava/util/ArrayList;

.field final c:Ljava/util/ArrayList;

.field final d:Ljava/util/HashMap;

.field final e:Ljava/util/ArrayList;

.field final f:Ljava/util/ArrayList;

.field private j:I

.field private k:I

.field private final l:Lcom/iLoong/launcher/desktop/iLoongApplication;

.field private final m:Ljava/lang/Object;

.field private n:Lcom/iLoong/launcher/b/g;

.field private o:Lcom/iLoong/launcher/app/am;

.field private p:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/ref/WeakReference;

.field private w:Ljava/util/List;

.field private x:Lcom/iLoong/launcher/app/n;

.field private y:Ljava/util/ArrayList;

.field private z:Lcom/iLoong/launcher/app/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/iLoong/launcher/app/LauncherModel;->q:Landroid/os/HandlerThread;

    sget-object v0, Lcom/iLoong/launcher/app/LauncherModel;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/iLoong/launcher/app/LauncherModel;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/iLoong/launcher/app/LauncherModel;->r:Landroid/os/Handler;

    sput-boolean v2, Lcom/iLoong/launcher/app/LauncherModel;->g:Z

    sput-boolean v2, Lcom/iLoong/launcher/app/LauncherModel;->h:Z

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/app/LauncherModel;->B:Ljava/text/Collator;

    new-instance v0, Lcom/iLoong/launcher/app/an;

    invoke-direct {v0}, Lcom/iLoong/launcher/app/an;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/app/LauncherModel;->i:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/iLoong/launcher/desktop/iLoongApplication;Lcom/iLoong/launcher/app/ak;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->m:Ljava/lang/Object;

    new-instance v0, Lcom/iLoong/launcher/b/g;

    invoke-direct {v0}, Lcom/iLoong/launcher/b/g;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->n:Lcom/iLoong/launcher/b/g;

    iput v1, p0, Lcom/iLoong/launcher/app/LauncherModel;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->w:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/iLoong/launcher/app/LauncherModel;->l:Lcom/iLoong/launcher/desktop/iLoongApplication;

    new-instance v0, Lcom/iLoong/launcher/app/n;

    invoke-direct {v0, p2}, Lcom/iLoong/launcher/app/n;-><init>(Lcom/iLoong/launcher/app/ak;)V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->x:Lcom/iLoong/launcher/app/n;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->y:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/iLoong/launcher/app/LauncherModel;->z:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {p1}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->A:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/iLoong/launcher/app/LauncherModel;->k:I

    iput v1, p0, Lcom/iLoong/launcher/app/LauncherModel;->j:I

    sput-boolean v2, Lcom/iLoong/launcher/app/LauncherModel;->g:Z

    sput-boolean v2, Lcom/iLoong/launcher/app/LauncherModel;->h:Z

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private a(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/Intent;)Lcom/iLoong/launcher/a/f;
    .locals 7

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v2, Lcom/iLoong/launcher/a/f;

    invoke-direct {v2}, Lcom/iLoong/launcher/a/f;-><init>()V

    iput v6, v2, Lcom/iLoong/launcher/a/f;->l:I

    invoke-interface {p1, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/app/LauncherModel;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean v6, v2, Lcom/iLoong/launcher/a/f;->c:Z

    iput-boolean v5, v2, Lcom/iLoong/launcher/a/f;->b:Z

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/a/f;->a(Landroid/graphics/Bitmap;)V

    return-object v2

    :pswitch_0
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-boolean v5, v2, Lcom/iLoong/launcher/a/f;->b:Z

    :try_start_0
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p6}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    invoke-static {p8}, Lcom/iLoong/launcher/Widget3D/i;->a(Landroid/content/Intent;)I

    move-result v1

    sget v3, Lcom/iLoong/launcher/Widget3D/i;->c:I

    if-eq v1, v3, :cond_5

    sget v0, Lcom/iLoong/launcher/Widget3D/i;->d:I

    if-ne v1, v0, :cond_4

    sget v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->y:I

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    const-string v3, "Contacts"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    const-string v3, "\u806f\u7d61\u4eba"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "\u8054\u7cfb\u4eba"

    iput-object v0, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    :cond_4
    :goto_2
    const-string v0, "test"

    const-string v3, "getShortcutInfo right"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/iLoong/launcher/Widget3D/i;->e:I

    if-ne v1, v0, :cond_a

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->l:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/app/LauncherModel;->l:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->Z:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->aa:I

    invoke-static {v0, v1, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_5
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/app/LauncherModel;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean v6, v2, Lcom/iLoong/launcher/a/f;->c:Z

    goto/16 :goto_0

    :cond_6
    if-ne v0, v6, :cond_8

    iget-object v0, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    const-string v3, "Contacts"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    const-string v3, "\u8054\u7cfb\u4eba"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_7
    const-string v0, "\u806f\u7d61\u4eba"

    iput-object v0, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_8
    iget-object v0, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    const-string v3, "\u8054\u7cfb\u4eba"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    const-string v3, "\u806f\u7d61\u4eba"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_9
    const-string v0, "Contacts"

    iput-object v0, v2, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v1, "theme/iconbg/contactperson-icon.png"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0, p1, p6}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/iLoong/launcher/app/LauncherModel;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean v5, v2, Lcom/iLoong/launcher/a/f;->b:Z

    iput-boolean v6, v2, Lcom/iLoong/launcher/a/f;->c:Z

    goto/16 :goto_0

    :cond_b
    iput-boolean v6, v2, Lcom/iLoong/launcher/a/f;->b:Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/iLoong/launcher/app/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/Intent;)Lcom/iLoong/launcher/a/f;
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/Intent;)Lcom/iLoong/launcher/a/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/HashMap;J)Lcom/iLoong/launcher/a/h;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/iLoong/launcher/app/LauncherModel;->c(Ljava/util/HashMap;J)Lcom/iLoong/launcher/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/iLoong/launcher/a/c;)V
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/a/c;->a(Landroid/content/ContentValues;)V

    sget-object v0, Lcom/iLoong/launcher/app/k;->b:Landroid/net/Uri;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/iLoong/launcher/a/c;->k:J

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/a/j;->a(Landroid/content/ContentValues;)V

    iget-wide v2, p1, Lcom/iLoong/launcher/a/j;->k:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/iLoong/launcher/app/k;->a(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;JIII)V
    .locals 10

    iget-wide v0, p1, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v7, p1, Lcom/iLoong/launcher/a/j;->s:I

    iget v8, p1, Lcom/iLoong/launcher/a/j;->t:I

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;JIIIIIZ)V

    :goto_0
    return-void

    :cond_0
    iget v7, p1, Lcom/iLoong/launcher/a/j;->s:I

    iget v8, p1, Lcom/iLoong/launcher/a/j;->t:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v8}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;JIIIII)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;JIIIII)V
    .locals 7

    const/4 v6, 0x0

    iput-wide p2, p1, Lcom/iLoong/launcher/a/j;->m:J

    iput p4, p1, Lcom/iLoong/launcher/a/j;->n:I

    iput p5, p1, Lcom/iLoong/launcher/a/j;->p:I

    iput p6, p1, Lcom/iLoong/launcher/a/j;->q:I

    iput p7, p1, Lcom/iLoong/launcher/a/j;->s:I

    iput p8, p1, Lcom/iLoong/launcher/a/j;->t:I

    iget-wide v0, p1, Lcom/iLoong/launcher/a/j;->k:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/app/k;->a(JZ)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "container"

    iget-wide v4, p1, Lcom/iLoong/launcher/a/j;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "x"

    iget v4, p1, Lcom/iLoong/launcher/a/j;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "y"

    iget v4, p1, Lcom/iLoong/launcher/a/j;->q:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cellX"

    iget v4, p1, Lcom/iLoong/launcher/a/j;->s:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cellY"

    iget v4, p1, Lcom/iLoong/launcher/a/j;->t:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "screen"

    iget v4, p1, Lcom/iLoong/launcher/a/j;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "angle"

    iget v4, p1, Lcom/iLoong/launcher/a/j;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;JIIIIIZ)V
    .locals 4

    iput-wide p2, p1, Lcom/iLoong/launcher/a/j;->m:J

    iput p4, p1, Lcom/iLoong/launcher/a/j;->n:I

    iput p5, p1, Lcom/iLoong/launcher/a/j;->p:I

    iput p6, p1, Lcom/iLoong/launcher/a/j;->q:I

    iput p7, p1, Lcom/iLoong/launcher/a/j;->s:I

    iput p8, p1, Lcom/iLoong/launcher/a/j;->t:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "appshortcut"

    const-string v3, "addItemToDatabase"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/a/j;->a(Landroid/content/ContentValues;)V

    if-eqz p9, :cond_1

    sget-object v0, Lcom/iLoong/launcher/app/k;->a:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/iLoong/launcher/a/j;->k:J

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/iLoong/launcher/app/k;->b:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic a(Lcom/iLoong/launcher/app/LauncherModel;I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/app/LauncherModel;->p:I

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/app/LauncherModel;Lcom/iLoong/launcher/app/am;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/LauncherModel;->o:Lcom/iLoong/launcher/app/am;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/app/LauncherModel;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/LauncherModel;->w:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/app/LauncherModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/app/LauncherModel;->s:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "appshortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "title: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "intent :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/iLoong/launcher/app/k;->a:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "title"

    aput-object v4, v2, v6

    const-string v4, "intent"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "intent"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {p2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/iLoong/launcher/app/LauncherModel;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v6

    goto :goto_0
.end method

.method static synthetic a(Lcom/iLoong/launcher/app/LauncherModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->s:Z

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, "launchFlags"

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v6, :cond_4

    const/4 v0, 0x0

    :goto_1
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_6

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    add-int/lit8 v5, v3, 0x1

    add-int v6, v3, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "appshortcut"

    const-string v1, "GetIntentMatchString###: fffcckkk"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public static b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/app/LauncherModel;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Ljava/util/HashMap;J)Lcom/iLoong/launcher/a/a;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/iLoong/launcher/app/LauncherModel;->d(Ljava/util/HashMap;J)Lcom/iLoong/launcher/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->n:Lcom/iLoong/launcher/b/g;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/iLoong/launcher/a/j;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p1, Lcom/iLoong/launcher/a/j;->k:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/iLoong/launcher/app/k;->a(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/app/LauncherModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/app/LauncherModel;->u:Z

    return-void
.end method

.method private static c(Ljava/util/HashMap;J)Lcom/iLoong/launcher/a/h;
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/e;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/iLoong/launcher/a/h;

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/iLoong/launcher/a/h;

    invoke-direct {v0}, Lcom/iLoong/launcher/a/h;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v0, Lcom/iLoong/launcher/a/h;

    return-object v0
.end method

.method static synthetic c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->v:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic c(Lcom/iLoong/launcher/app/LauncherModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/app/LauncherModel;->t:Z

    return-void
.end method

.method private static d(Ljava/util/HashMap;J)Lcom/iLoong/launcher/a/a;
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/e;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/iLoong/launcher/a/a;

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/iLoong/launcher/a/a;

    invoke-direct {v0}, Lcom/iLoong/launcher/a/a;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v0, Lcom/iLoong/launcher/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/iLoong/launcher/app/LauncherModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->t:Z

    return v0
.end method

.method static synthetic e(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/app/LauncherModel;->B:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic g(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/am;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->o:Lcom/iLoong/launcher/app/am;

    return-object v0
.end method

.method static synthetic h(Lcom/iLoong/launcher/app/LauncherModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->u:Z

    return v0
.end method

.method static synthetic i(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->x:Lcom/iLoong/launcher/app/n;

    return-object v0
.end method

.method static synthetic k(Lcom/iLoong/launcher/app/LauncherModel;)I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->j:I

    return v0
.end method

.method static synthetic l(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/ak;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->z:Lcom/iLoong/launcher/app/ak;

    return-object v0
.end method

.method static synthetic m(Lcom/iLoong/launcher/app/LauncherModel;)I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->k:I

    return v0
.end method

.method static synthetic n(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/desktop/iLoongApplication;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->l:Lcom/iLoong/launcher/desktop/iLoongApplication;

    return-object v0
.end method


# virtual methods
.method a(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)Lcom/iLoong/launcher/a/f;
    .locals 11

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    const-string v2, "jbc"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "sys_sc.name="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    if-nez v1, :cond_0

    const-string v1, "Launcher.Model"

    const-string v2, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_0
    if-eqz v3, :cond_2

    instance-of v2, v3, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v3

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v6, p1}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x1

    move v3, v2

    move-object v2, v4

    move-object v4, v6

    :goto_1
    new-instance v6, Lcom/iLoong/launcher/a/f;

    invoke-direct {v6}, Lcom/iLoong/launcher/a/f;-><init>()V

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/iLoong/launcher/app/LauncherModel;->l:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-virtual {v4}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f020019

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v8, p0, Lcom/iLoong/launcher/app/LauncherModel;->l:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-static {v4, v8}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_1
    iput-object v7, v6, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    iput-object v1, v6, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    iput-boolean v3, v6, Lcom/iLoong/launcher/a/f;->b:Z

    iput-object v2, v6, Lcom/iLoong/launcher/a/f;->e:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v4, :cond_3

    invoke-virtual {v6, v4}, Lcom/iLoong/launcher/a/f;->a(Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v6, v1}, Lcom/iLoong/launcher/a/f;->a(Lcom/iLoong/launcher/app/ak;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/cb;->ap:F

    invoke-static {v1, v2}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, v6, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/aj;->o()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->IconToPixmap3D(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v6, v7, v1, v5}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/a/f;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    :goto_2
    move-object v4, v6

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_4

    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v8, p0, Lcom/iLoong/launcher/app/LauncherModel;->z:Lcom/iLoong/launcher/app/ak;

    iget-object v9, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Lcom/iLoong/launcher/app/ak;->a(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move v3, v5

    goto/16 :goto_1

    :catch_0
    move-exception v2

    move-object v2, v4

    :goto_3
    const-string v6, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not load shortcut icon: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto/16 :goto_1

    :cond_3
    invoke-static {v6, v7}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/a/f;Ljava/lang/String;)Z

    invoke-virtual {v6, v4}, Lcom/iLoong/launcher/a/f;->a(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_3

    :cond_4
    move-object v2, v4

    move v3, v5

    goto/16 :goto_1
.end method

.method public a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/iLoong/launcher/a/f;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v1, Lcom/iLoong/launcher/a/f;

    invoke-direct {v1}, Lcom/iLoong/launcher/a/f;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->z:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/app/ak;->a(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p0, p4, p5}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/app/LauncherModel;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/iLoong/launcher/a/f;->c:Z

    :cond_3
    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/a/f;->a(Landroid/graphics/Bitmap;)V

    if-eqz v3, :cond_4

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    :cond_4
    iget-object v0, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    if-eqz p4, :cond_5

    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    :cond_5
    iget-object v0, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    :cond_6
    iput v5, v1, Lcom/iLoong/launcher/a/f;->l:I

    move-object v0, v1

    goto :goto_0
.end method

.method public a()Lcom/iLoong/launcher/b/g;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->n:Lcom/iLoong/launcher/b/g;

    return-object v0
.end method

.method a(Landroid/content/Context;Lcom/iLoong/launcher/a/f;Landroid/database/Cursor;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 4

    iget-object v1, p0, Lcom/iLoong/launcher/app/LauncherModel;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startLoader isLaunching="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->o:Lcom/iLoong/launcher/app/am;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iLoong/launcher/app/am;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {v0}, Lcom/iLoong/launcher/app/am;->b()V

    :cond_1
    new-instance v0, Lcom/iLoong/launcher/app/am;

    invoke-direct {v0, p0, p1, p2}, Lcom/iLoong/launcher/app/am;-><init>(Lcom/iLoong/launcher/app/LauncherModel;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->o:Lcom/iLoong/launcher/app/am;

    sget-object v0, Lcom/iLoong/launcher/app/LauncherModel;->r:Landroid/os/Handler;

    iget-object v2, p0, Lcom/iLoong/launcher/app/LauncherModel;->o:Lcom/iLoong/launcher/app/am;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/iLoong/launcher/app/m;)V
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/app/LauncherModel;->r:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/iLoong/launcher/app/x;)V
    .locals 2

    iget-object v1, p0, Lcom/iLoong/launcher/app/LauncherModel;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->v:Ljava/lang/ref/WeakReference;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)Lcom/iLoong/launcher/a/f;
    .locals 10

    const/4 v5, 0x0

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, p1}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x1

    :goto_0
    new-instance v4, Lcom/iLoong/launcher/a/f;

    invoke-direct {v4}, Lcom/iLoong/launcher/a/f;-><init>()V

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/iLoong/launcher/app/LauncherModel;->l:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020019

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lcom/iLoong/launcher/app/LauncherModel;->l:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-static {v3, v5}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    invoke-virtual {v4, v3}, Lcom/iLoong/launcher/a/f;->a(Landroid/graphics/Bitmap;)V

    iput-object v6, v4, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    iput-object v1, v4, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    iput-boolean v2, v4, Lcom/iLoong/launcher/a/f;->b:Z

    return-object v4

    :cond_1
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_2

    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not load shortcut icon: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v4

    move-object v3, v5

    goto :goto_0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->A:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iLoong/launcher/app/ao;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/app/ao;-><init>(Lcom/iLoong/launcher/app/LauncherModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->o:Lcom/iLoong/launcher/app/am;

    if-eqz v0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bD:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bt:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->p:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->p:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onReceive intent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    new-instance v3, Lcom/iLoong/launcher/app/m;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-direct {v3, p0, v0, v2}, Lcom/iLoong/launcher/app/m;-><init>(Lcom/iLoong/launcher/app/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/m;)V

    goto :goto_0

    :cond_4
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_9

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v5, :cond_3

    move v0, v2

    goto :goto_1

    :cond_6
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v3, "launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AVAILABLE:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/iLoong/launcher/app/m;

    invoke-direct {v3, p0, v2, v0}, Lcom/iLoong/launcher/app/m;-><init>(Lcom/iLoong/launcher/app/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/m;)V

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/x;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/iLoong/launcher/app/x;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/app/LauncherModel;->l:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UNAVAILABLE:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/iLoong/launcher/app/m;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, v0}, Lcom/iLoong/launcher/app/m;-><init>(Lcom/iLoong/launcher/app/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/m;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method
