.class public Lcom/iLoong/launcher/theme/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iLoong/launcher/theme/i;

.field private static c:Landroid/content/Context;

.field private static g:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/pm/PackageManager;

.field private d:Lcom/iLoong/launcher/theme/d;

.field private e:Lcom/iLoong/launcher/theme/d;

.field private f:Lcom/iLoong/launcher/theme/d;

.field private h:Z

.field private i:Ljava/util/Vector;

.field private j:Lcom/iLoong/launcher/theme/c;

.field private k:Lcom/iLoong/launcher/theme/g;

.field private l:Z

.field private m:Landroid/graphics/Bitmap;

.field private n:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/theme/i;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/theme/i;->l:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/i;->n:Ljava/util/Vector;

    sput-object p0, Lcom/iLoong/launcher/theme/i;->a:Lcom/iLoong/launcher/theme/i;

    sput-object p1, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/i;->b:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/iLoong/launcher/theme/c;

    invoke-direct {v0, p1}, Lcom/iLoong/launcher/theme/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/i;->j:Lcom/iLoong/launcher/theme/c;

    invoke-direct {p0}, Lcom/iLoong/launcher/theme/i;->l()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/theme/d;
    .locals 4

    new-instance v1, Lcom/iLoong/launcher/theme/d;

    invoke-direct {v1, p1}, Lcom/iLoong/launcher/theme/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    const v2, 0x7f0c00b3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/theme/d;->b:Ljava/lang/CharSequence;

    :goto_0
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/iLoong/launcher/theme/d;->e:Z

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/iLoong/launcher/theme/d;->b:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/theme/d;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/iLoong/launcher/theme/i;->a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/theme/d;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static c()Lcom/iLoong/launcher/theme/i;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/theme/i;->a:Lcom/iLoong/launcher/theme/i;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/iLoong/launcher/theme/f;

    invoke-direct {v0}, Lcom/iLoong/launcher/theme/f;-><init>()V

    iget-object v1, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iget-object v1, v1, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/theme/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/i;->j:Lcom/iLoong/launcher/theme/c;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/theme/c;->a(Lcom/iLoong/launcher/theme/f;)V

    return-void
.end method

.method private static j(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    sget-object v0, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.iLoong.themes"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->k:Lcom/iLoong/launcher/theme/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->k:Lcom/iLoong/launcher/theme/g;

    invoke-interface {v0}, Lcom/iLoong/launcher/theme/g;->a()V

    :cond_0
    return-void
.end method

.method private k()Ljava/util/ArrayList;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.iLoong.themes"

    invoke-direct {v0, v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v3, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    sget-object v4, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sget-object v0, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/iLoong/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    if-lt v1, v4, :cond_1

    return-object v2

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private l()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->j:Lcom/iLoong/launcher/theme/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/c;->d()Lcom/iLoong/launcher/theme/f;

    move-result-object v1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/i;->i:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/iLoong/launcher/theme/i;->k()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iget-object v2, p0, Lcom/iLoong/launcher/theme/i;->d:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/iLoong/launcher/theme/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/iLoong/launcher/theme/f;->a:Ljava/lang/String;

    sget-object v1, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iget-object v0, v0, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/theme/i;->i(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iput-boolean v6, v0, Lcom/iLoong/launcher/theme/d;->c:Z

    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/theme/i;->a(Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/theme/d;

    move-result-object v3

    iput-object v3, p0, Lcom/iLoong/launcher/theme/i;->d:Lcom/iLoong/launcher/theme/d;

    iput-object v3, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iget-object v3, p0, Lcom/iLoong/launcher/theme/i;->d:Lcom/iLoong/launcher/theme/d;

    iput-boolean v6, v3, Lcom/iLoong/launcher/theme/d;->d:Z

    iget-object v3, p0, Lcom/iLoong/launcher/theme/i;->i:Ljava/util/Vector;

    iget-object v4, p0, Lcom/iLoong/launcher/theme/i;->d:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v3, Lcom/iLoong/launcher/theme/d;

    sget-object v4, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    const-string v5, "theme/configbase.xml"

    invoke-direct {v3, v4, v5}, Lcom/iLoong/launcher/theme/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/iLoong/launcher/theme/i;->f:Lcom/iLoong/launcher/theme/d;

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/theme/i;->a(Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/theme/d;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/iLoong/launcher/theme/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v3, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->i:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const/16 v1, 0x459

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/iLoong/launcher/theme/i;->d:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a()Lcom/iLoong/launcher/theme/c;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->j:Lcom/iLoong/launcher/theme/c;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->n:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/theme/d;)V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/i;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v0, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/theme/d;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->f:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/theme/d;->c(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->n:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/iLoong/launcher/theme/d;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/theme/d;->c:Z

    iput-object p1, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iput-boolean v2, v0, Lcom/iLoong/launcher/theme/d;->c:Z

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->j:Lcom/iLoong/launcher/theme/c;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/theme/c;->b(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iget-object v0, v0, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/theme/i;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iLoong/launcher/theme/i;->j()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/i;->d()V

    invoke-direct {p0}, Lcom/iLoong/launcher/theme/i;->m()V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/theme/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->f:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/theme/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/d;->b()Lcom/badlogic/gdx/backends/android/AndroidFiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/AndroidFiles;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->d:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/d;->b()Lcom/badlogic/gdx/backends/android/AndroidFiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/AndroidFiles;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->n:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->d:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/d;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "theme"

    const-string v1, "RemovePackage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/theme/d;

    iget-object v0, v0, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iget-object v0, v0, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "theme"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemovePackage = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/i;->h()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/theme/i;->l:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public f()Lcom/iLoong/launcher/theme/d;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/iLoong/launcher/theme/i;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/theme/i;->a(Landroid/content/pm/ResolveInfo;)Lcom/iLoong/launcher/theme/d;

    move-result-object v0

    iget-object v3, p0, Lcom/iLoong/launcher/theme/i;->i:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/theme/i;->l:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public g()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->i:Ljava/util/Vector;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iget-object v0, v0, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/theme/i;->m()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/theme/i;->e(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/theme/i;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->d:Lcom/iLoong/launcher/theme/d;

    iput-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iput-boolean v1, v0, Lcom/iLoong/launcher/theme/d;->c:Z

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    iget-object v0, v0, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/theme/i;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->j:Lcom/iLoong/launcher/theme/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/c;->b(I)V

    invoke-direct {p0}, Lcom/iLoong/launcher/theme/i;->j()V

    invoke-direct {p0}, Lcom/iLoong/launcher/theme/i;->m()V

    return-void
.end method

.method public h(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/theme/d;

    iget-object v0, v0, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public i()V
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const-string v1, "launcher"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/cb;->af:Ljava/lang/String;

    sput-object v0, Lcom/iLoong/launcher/theme/i;->g:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/iLoong/launcher/theme/i;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/theme/i;->h:Z

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/theme/i;->c:Landroid/content/Context;

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iget-boolean v1, p0, Lcom/iLoong/launcher/theme/i;->h:Z

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v4, Lcom/iLoong/launcher/theme/i;->g:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-string v2, "apply_wallpaper_time"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-gez v2, :cond_2

    invoke-static {v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/theme/i;->m:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/i;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/i;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/theme/i;->m:Landroid/graphics/Bitmap;

    :goto_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apply_wallpaper_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/theme/i;->e:Lcom/iLoong/launcher/theme/d;

    const-string v2, "wallpaper/default.jpg"

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/theme/d;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_3
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
