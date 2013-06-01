.class public Lcom/iLoong/launcher/desktop/iLoongLauncher;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;

# interfaces
.implements Lcom/iLoong/launcher/SetupMenu/Actions/aa;


# static fields
.field private static L:Ljava/util/HashMap;

.field private static N:Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;

.field private static O:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field public static adapter:Landroid/bluetooth/BluetoothAdapter;

.field public static g:Z

.field public static j:Z

.field public static k:J

.field public static l:J

.field public static m:Z

.field public static n:I

.field public static o:Z

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Z

.field public static w:Z

.field public static x:Ljava/lang/String;

.field public static y:I


# instance fields
.field private A:Z

.field private B:Landroid/appwidget/AppWidgetManager;

.field private C:Lcom/iLoong/launcher/a/e;

.field private final D:Landroid/database/ContentObserver;

.field private E:Landroid/os/Bundle;

.field private F:Landroid/text/SpannableStringBuilder;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lcom/iLoong/launcher/app/LauncherModel;

.field private M:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

.field private P:[Ljava/lang/String;

.field private Q:[Landroid/content/Intent;

.field private R:[Landroid/graphics/Bitmap;

.field private S:[Ljava/lang/String;

.field private T:[Ljava/lang/CharSequence;

.field private final U:[I

.field private V:Lcom/iLoong/launcher/Workspace/d;

.field private W:Landroid/os/Vibrator;

.field private X:I

.field private Y:Z

.field private Z:I

.field public a:I

.field private aa:Z

.field private ab:I

.field private ac:I

.field private ad:Landroid/app/WallpaperManager;

.field private ae:Landroid/app/admin/DevicePolicyManager;

.field private af:Landroid/content/ComponentName;

.field private ag:Lcom/badlogic/gdx/math/Vector2;

.field private ah:Landroid/content/BroadcastReceiver;

.field private ai:Lcom/iLoong/launcher/Workspace/c;

.field private aj:Lcom/iLoong/launcher/c/f;

.field private ak:Z

.field private al:Ljava/lang/String;

.field private am:Lcom/iLoong/launcher/SetupMenu/r;

.field private an:Lcom/iLoong/launcher/HotSeat3D/j;

.field private ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

.field private ap:Lcom/iLoong/launcher/HotSeat3D/f;

.field private aq:Z

.field private ar:I

.field private as:[I

.field public b:I

.field public c:Lcom/iLoong/launcher/widget/a;

.field public d:Lcom/iLoong/launcher/d/a;

.field public e:Lcom/iLoong/launcher/Workspace/Workspace;

.field f:Landroid/app/ProgressDialog;

.field public h:Lcom/iLoong/launcher/Desktop3D/g;

.field public i:Z

.field public mMainHandler:Landroid/os/Handler;

.field public s:Z

.field public t:Lcom/iLoong/launcher/airpush/AirPush;

.field public u:Z

.field public v:Z

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->L:Ljava/util/HashMap;

    sput-boolean v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->g:Z

    sput-boolean v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->j:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->k:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l:J

    sput-boolean v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    sput-boolean v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->o:Z

    const-string v0, "showAllApp"

    sput-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->p:Ljava/lang/String;

    const-string v0, "restart"

    sput-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->q:Ljava/lang/String;

    sput-boolean v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->r:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->w:Z

    const-string v0, ""

    sput-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->x:Ljava/lang/String;

    sput v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    iput v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a:I

    iput v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b:I

    new-instance v0, Lcom/iLoong/launcher/desktop/q;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/desktop/q;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->D:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->F:Landroid/text/SpannableStringBuilder;

    iput-boolean v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->G:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->H:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->I:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->J:Z

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Q:[Landroid/content/Intent;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->R:[Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->S:[Ljava/lang/String;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->U:[I

    new-instance v0, Lcom/iLoong/launcher/Workspace/d;

    invoke-direct {v0}, Lcom/iLoong/launcher/Workspace/d;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->V:Lcom/iLoong/launcher/Workspace/d;

    iput v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->X:I

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Y:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Z:I

    iput-boolean v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aa:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->i:Z

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ag:Lcom/badlogic/gdx/math/Vector2;

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ak:Z

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->al:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->s:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->u:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->v:Z

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->an:Lcom/iLoong/launcher/HotSeat3D/j;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ap:Lcom/iLoong/launcher/HotSeat3D/f;

    new-instance v0, Lcom/iLoong/launcher/desktop/k;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/desktop/k;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aq:Z

    iput v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ar:I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->as:[I

    return-void
.end method

.method static synthetic A()Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->N:Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;

    return-object v0
.end method

.method static synthetic B()Lcom/iLoong/launcher/desktop/iLoongLauncher;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->O:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    return-object v0
.end method

.method static synthetic C()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->L:Ljava/util/HashMap;

    return-object v0
.end method

.method private D()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/a;->startListening()V

    return-void
.end method

.method private E()V
    .locals 5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/iLoong/launcher/UI3DEngine/l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private F()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ae:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->af:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->G()V

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->G()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "adminActive"

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ae:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    goto :goto_0
.end method

.method private G()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->af:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    const-string v2, "------ \u5176\u4ed6\u63cf\u8ff0 ------"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Q:[Landroid/content/Intent;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "hotseat"

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    return-void
.end method

.method private I()Landroid/net/Uri;
    .locals 3

    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{CID}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "{CID}"

    const-string v2, "android-google"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private J()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/content/Intent;

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Q:[Landroid/content/Intent;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->R:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->S:[Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Q:[Landroid/content/Intent;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->R:[Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->S:[Ljava/lang/String;

    goto :goto_0
.end method

.method private K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->F:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private L()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->F:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->F:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->F:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private M()V
    .locals 4

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/app/LauncherProvider;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->D:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private N()V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/iLoong/launcher/desktop/b;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/desktop/b;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private O()V
    .locals 7

    const/high16 v4, 0x4000

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->b()Lcom/iLoong/launcher/Desktop3D/bq;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/g;->i:Lcom/iLoong/launcher/Widget3D/j;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/j;->c()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/d/a;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v6

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ag:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v1, Lcom/iLoong/launcher/d/a;->width:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Lcom/iLoong/launcher/a/j;->p:I

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ag:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v1, Lcom/iLoong/launcher/d/a;->height:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Lcom/iLoong/launcher/a/j;->q:I

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v2

    iput v2, v6, Lcom/iLoong/launcher/a/j;->n:I

    iget v2, v6, Lcom/iLoong/launcher/a/j;->n:I

    iget v3, v6, Lcom/iLoong/launcher/a/j;->p:I

    iget v4, v6, Lcom/iLoong/launcher/a/j;->q:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    iput-object v2, v0, Lcom/iLoong/launcher/a/e;->f:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;)V

    iget-object v0, v1, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/d/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v6}, Lcom/iLoong/launcher/app/LauncherModel;->b(Landroid/content/Context;Lcom/iLoong/launcher/a/j;)V

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->L:Ljava/util/HashMap;

    iget-wide v1, v6, Lcom/iLoong/launcher/a/j;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private P()V
    .locals 6

    const/high16 v5, 0x4000

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/g;->j:Lcom/iLoong/launcher/Widget3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/i;->c()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->b()Lcom/iLoong/launcher/Desktop3D/bq;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v4

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ag:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v1, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v4, Lcom/iLoong/launcher/a/j;->p:I

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ag:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v1, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v4, Lcom/iLoong/launcher/a/j;->q:I

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v2

    iput v2, v4, Lcom/iLoong/launcher/a/j;->n:I

    iget v2, v4, Lcom/iLoong/launcher/a/j;->n:I

    iget v3, v4, Lcom/iLoong/launcher/a/j;->p:I

    iget v4, v4, Lcom/iLoong/launcher/a/j;->q:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIIZ)Z

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 4

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->S:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->T:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    if-nez v0, :cond_2

    new-instance v0, Lcom/iLoong/launcher/c/f;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/c/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    new-instance v1, Lcom/iLoong/launcher/c/e;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/c/f;->a(Lcom/iLoong/launcher/c/a;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/c/f;->b()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/c/f;->b()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/c/f;->c()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Landroid/app/WallpaperManager;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ad:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v2, 0x0

    const v8, 0x7f0c00e8

    const v7, 0x7f0c00e7

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/theme/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    invoke-static {v0, v1, v3}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v3, 0x1

    invoke-virtual {v4, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    aget-object v3, v3, p3

    const-string v6, "*BROWSER*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p3

    :goto_1
    const/4 v0, 0x1

    move v3, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aD:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p3

    :cond_2
    :goto_4
    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p3

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v3, :cond_5

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_6
    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, p3

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2, p3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Ljava/lang/String;Landroid/content/Intent;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p3

    goto :goto_4

    :cond_9
    move v3, v0

    goto/16 :goto_2

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->J:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/iLoongLauncher;I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Z:I

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/iLoongLauncher;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->C:Lcom/iLoong/launcher/a/e;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->A:Z

    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->L:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->L:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private a(III[IIIZ)Z
    .locals 7

    const-string v0, "widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x,y,spanX,spanY="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, p4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/g;->a(III[III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ag:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method private b(II)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private b(Landroid/content/pm/ResolveInfo;)V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/desktop/c;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/desktop/c;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->I:Z

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->K:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-virtual {v0, p0, p1}, Lcom/iLoong/launcher/app/LauncherModel;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/iLoong/launcher/a/f;

    move-result-object v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/iLoong/launcher/a/f;->p:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/iLoong/launcher/a/f;->q:I

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/g;->n()I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/a/f;->n:I

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/a/f;)Lcom/iLoong/launcher/Desktop3D/aj;

    return-void
.end method

.method static synthetic c(Lcom/iLoong/launcher/desktop/iLoongLauncher;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->H:Z

    return-void
.end method

.method static synthetic c(Lcom/iLoong/launcher/desktop/iLoongLauncher;)[I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->as:[I

    return-object v0
.end method

.method static synthetic d(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->H()V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.uc.browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.skymobi.browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.browser.BrowserActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.uc.browser.hd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.UCMobile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.mtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.qbx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.opera.mini.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.opera.browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oupeng.mini.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oupeng.mobile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.mx.browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.chrome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "org.mozilla.firefox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.qihoo.browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.qihoo.padbrowser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.baidu.browser.apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.dolphin.browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.dolphin.browser.cn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.dolphin.browser.engine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.dolphin.browser.android.pad.cn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/iLoong/launcher/desktop/iLoongLauncher;)I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->X:I

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ai:Lcom/iLoong/launcher/Workspace/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Workspace/c;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ai:Lcom/iLoong/launcher/Workspace/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Workspace/c;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ai:Lcom/iLoong/launcher/Workspace/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/c;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ai:Lcom/iLoong/launcher/Workspace/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/a;

    iget-object v2, v0, Lcom/iLoong/launcher/Workspace/a;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/iLoong/launcher/Workspace/a;->e:Z

    if-nez v2, :cond_3

    new-instance v1, Lcom/iLoong/launcher/a/f;

    invoke-direct {v1}, Lcom/iLoong/launcher/a/f;-><init>()V

    iget-object v2, v0, Lcom/iLoong/launcher/Workspace/a;->b:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PACKAGE_INSTALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    iget-object v2, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/iLoong/launcher/Workspace/a;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/iLoong/launcher/Workspace/a;->f:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/iLoong/launcher/Widget3D/m;->a(Lcom/iLoong/launcher/a/f;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ai:Lcom/iLoong/launcher/Workspace/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/c;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ai:Lcom/iLoong/launcher/Workspace/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/a;

    iget-boolean v1, v0, Lcom/iLoong/launcher/Workspace/a;->e:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/iLoong/launcher/Workspace/a;->a:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic f(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->W:Landroid/os/Vibrator;

    return-object v0
.end method

.method private f(I)V
    .locals 8

    const/4 v5, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/iLoong/launcher/a/c;

    invoke-direct {v0, p1}, Lcom/iLoong/launcher/a/c;-><init>(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/g;->n()I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/a/c;->n:I

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->B:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "addAppWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packageName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->d(II[I)[I

    move-result-object v2

    aget v3, v2, v6

    if-le v3, v5, :cond_2

    aput v5, v2, v6

    :cond_2
    invoke-virtual {v0}, Lcom/iLoong/launcher/a/c;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.mediatek.appwidget.video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget v3, v2, v7

    if-le v3, v5, :cond_4

    :cond_3
    aput v5, v2, v7

    :cond_4
    aget v3, v2, v6

    iput v3, v0, Lcom/iLoong/launcher/a/c;->w:I

    aget v3, v2, v7

    iput v3, v0, Lcom/iLoong/launcher/a/c;->x:I

    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    int-to-float v3, v3

    iput v3, v0, Lcom/iLoong/launcher/a/c;->d:F

    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    int-to-float v3, v3

    iput v3, v0, Lcom/iLoong/launcher/a/c;->e:F

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ag:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget v4, v2, v6

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->cn:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lcom/iLoong/launcher/a/c;->p:I

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ag:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aget v2, v2, v7

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    mul-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v3, v2

    float-to-int v2, v2

    iput v2, v0, Lcom/iLoong/launcher/a/c;->q:I

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_5

    iput v6, v0, Lcom/iLoong/launcher/a/c;->p:I

    :cond_5
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/a/c;)Lcom/iLoong/launcher/widget/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v7}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/a/c;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/widget/WidgetHostView;->setWidget(Lcom/iLoong/launcher/widget/c;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->F()V

    return-void
.end method

.method public static getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->O:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    return-object v0
.end method

.method static synthetic h(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/app/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->K:Lcom/iLoong/launcher/app/LauncherModel;

    return-object v0
.end method

.method static synthetic i(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->D()V

    return-void
.end method

.method static synthetic j(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P()V

    return-void
.end method

.method static synthetic k(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->O()V

    return-void
.end method

.method static synthetic l(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/a/e;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->C:Lcom/iLoong/launcher/a/e;

    return-object v0
.end method

.method static synthetic m(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->J:Z

    return v0
.end method

.method static synthetic n(Lcom/iLoong/launcher/desktop/iLoongLauncher;)I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ab:I

    return v0
.end method

.method static synthetic o(Lcom/iLoong/launcher/desktop/iLoongLauncher;)I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ac:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Q:[Landroid/content/Intent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(I)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Q:[Landroid/content/Intent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/g;Z)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    iput-boolean p2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL20:Z

    iput-boolean v3, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    const/4 v1, 0x2

    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iput-boolean v3, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->handleKeyTypedChinese:Z

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/FixedResolutionStrategy;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/backends/android/surfaceview/FixedResolutionStrategy;-><init>(II)V

    iput-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    invoke-virtual {p0, p1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/iLoong/launcher/a/h;
    .locals 2

    new-instance v0, Lcom/iLoong/launcher/a/h;

    invoke-direct {v0}, Lcom/iLoong/launcher/a/h;-><init>()V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    iput-object v1, v0, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/g;->n()I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/a/h;->n:I

    iput p1, v0, Lcom/iLoong/launcher/a/h;->p:I

    iput p2, v0, Lcom/iLoong/launcher/a/h;->q:I

    return-object v0
.end method

.method public a(III)Lcom/iLoong/launcher/a/h;
    .locals 10

    const/4 v7, -0x1

    new-instance v1, Lcom/iLoong/launcher/a/h;

    invoke-direct {v1}, Lcom/iLoong/launcher/a/h;-><init>()V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    iput-object v0, v1, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    iput p3, v1, Lcom/iLoong/launcher/a/h;->n:I

    iput p1, v1, Lcom/iLoong/launcher/a/h;->p:I

    iput p2, v1, Lcom/iLoong/launcher/a/h;->q:I

    const/4 v0, 0x1

    iput v0, v1, Lcom/iLoong/launcher/a/h;->r:I

    const-wide/16 v2, -0x65

    iget v4, v1, Lcom/iLoong/launcher/a/h;->n:I

    const/4 v9, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v8, v7

    invoke-static/range {v0 .. v9}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;JIIIIIZ)V

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->L:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/iLoong/launcher/a/h;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public a(J)Lcom/iLoong/launcher/a/h;
    .locals 2

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->L:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/h;

    return-object v0
.end method

.method public a()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    if-nez v2, :cond_0

    new-instance v2, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    invoke-direct {v2, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ap:Lcom/iLoong/launcher/HotSeat3D/f;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->a()Lcom/iLoong/launcher/HotSeat3D/f;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ap:Lcom/iLoong/launcher/HotSeat3D/f;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ap:Lcom/iLoong/launcher/HotSeat3D/f;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ap:Lcom/iLoong/launcher/HotSeat3D/f;

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/HotSeat3D/f;->onChange(Z)V

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->an:Lcom/iLoong/launcher/HotSeat3D/j;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->b()Lcom/iLoong/launcher/HotSeat3D/j;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->an:Lcom/iLoong/launcher/HotSeat3D/j;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->an:Lcom/iLoong/launcher/HotSeat3D/j;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->an:Lcom/iLoong/launcher/HotSeat3D/j;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/HotSeat3D/j;->onChange(Z)V

    :cond_2
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 3

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->X:I

    :cond_0
    const/16 v0, 0x45b

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.introduction.dismissed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Y:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->v()V

    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    aput-object p3, v0, p1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->S:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method a(Landroid/content/ComponentName;II)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->as:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->as:[I

    const/4 v1, 0x1

    aput p3, v0, v1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/content/ComponentName;[I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->as:[I

    aget v1, p2, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->as:[I

    aget v1, p2, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ag:Lcom/badlogic/gdx/math/Vector2;

    aget v1, p2, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ag:Lcom/badlogic/gdx/math/Vector2;

    aget v1, p2, v3

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m()Lcom/iLoong/launcher/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/a;->allocateAppWidgetId()I

    move-result v0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d(I)V

    return-void
.end method

.method a(Landroid/content/Intent;I)V
    .locals 4

    const v2, 0x7f0c0021

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launcher does not have the permission to launch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V
    .locals 9

    check-cast p1, Lcom/iLoong/launcher/widget/c;

    invoke-virtual {p1}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v8

    iget-boolean v0, v8, Lcom/iLoong/launcher/a/c;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Lcom/iLoong/launcher/widget/c;I)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    iget-object v1, v8, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/g;->n()I

    move-result v2

    iget v3, v8, Lcom/iLoong/launcher/a/c;->p:I

    iget v4, v8, Lcom/iLoong/launcher/a/c;->q:I

    iget v5, v8, Lcom/iLoong/launcher/a/c;->w:I

    iget v6, v8, Lcom/iLoong/launcher/a/c;->x:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;IIIIIZ)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    iget-object v1, v8, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Workspace/Workspace;->d()V

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/a/e;)V
    .locals 3

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->L:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/iLoong/launcher/a/e;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/a/h;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p1, Lcom/iLoong/launcher/a/h;->k:J

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(J)Lcom/iLoong/launcher/a/h;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->L:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/iLoong/launcher/a/h;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/widget/c;)V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {p1}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/a/c;->n:I

    invoke-virtual {v0, p1, v1}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Lcom/iLoong/launcher/widget/c;I)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    invoke-virtual {p1}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/a/c;->a:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/widget/a;->deleteAppWidgetId(I)V

    const-string v0, "delete widget "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "widgetId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/iLoong/launcher/widget/c;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :goto_0
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v4, "*BROWSER*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    move-object v1, p1

    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_2
    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget-object v4, Lcom/iLoong/launcher/Desktop3D/cb;->y:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/iLoong/launcher/Desktop3D/cb;->y:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "9.1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "9.2"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_3
    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Q:[Landroid/content/Intent;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    const v4, 0x7f0c0021

    invoke-virtual {p0, v4}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "http://www.google.cn"

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->I()Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v1, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid hotseat intent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Q:[Landroid/content/Intent;

    aput-object v1, v4, v0

    iget-object v4, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->R:[Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->S:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {p0, v5, v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Ljava/lang/String;Landroid/content/Intent;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v4, v0

    goto :goto_4
.end method

.method public a(Landroid/content/Intent;IIIZ)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->K:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-virtual {v0, p0, p1}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/iLoong/launcher/a/f;

    move-result-object v9

    if-nez v9, :cond_0

    move v5, v8

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, v9, Lcom/iLoong/launcher/a/f;->p:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, v9, Lcom/iLoong/launcher/a/f;->q:I

    iput p2, v9, Lcom/iLoong/launcher/a/f;->n:I

    iget v1, v9, Lcom/iLoong/launcher/a/f;->n:I

    iget-object v4, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->U:[I

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v6, v5

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(III[IIIZ)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p5, :cond_1

    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v0, v9, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/iLoong/launcher/a/f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move v5, v8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->U:[I

    aget v0, v0, v8

    iput v0, v9, Lcom/iLoong/launcher/a/f;->s:I

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->U:[I

    aget v0, v0, v5

    iput v0, v9, Lcom/iLoong/launcher/a/f;->t:I

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cellX,cellY="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v9, Lcom/iLoong/launcher/a/f;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/iLoong/launcher/a/f;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/Desktop3D/g;->b(Lcom/iLoong/launcher/a/f;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 7

    const/high16 v4, 0x1000

    const/4 v0, 0x1

    const v6, 0x7f0c0021

    const/4 v1, 0x0

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->be:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/cb;->bf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {p0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {p0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launcher does not have the permission to launch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    sget-object v2, Lcom/iLoong/launcher/Desktop3D/cb;->z:Ljava/lang/String;

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->A:Z

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FREQUENCY:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FREQUENCY:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {p0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-static {p0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launcher does not have the permission to launch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public a(Lcom/iLoong/launcher/a/c;Z)Z
    .locals 10

    iget v8, p1, Lcom/iLoong/launcher/a/c;->a:I

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->B:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->J:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    invoke-virtual {v0, p0, v8, v1}, Lcom/iLoong/launcher/widget/a;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/widget/WidgetHostView;

    iput-object v0, p1, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget-object v0, p1, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-virtual {v0, v8, v1}, Lcom/iLoong/launcher/widget/WidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v0, p1, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/widget/WidgetHostView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    iget v1, p1, Lcom/iLoong/launcher/a/c;->n:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/CellLayout;

    const/4 v0, 0x2

    new-array v9, v0, [I

    const/4 v0, 0x0

    iget v1, p1, Lcom/iLoong/launcher/a/c;->w:I

    aput v1, v9, v0

    const/4 v0, 0x1

    iget v1, p1, Lcom/iLoong/launcher/a/c;->x:I

    aput v1, v9, v0

    iget-object v4, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->U:[I

    iget v1, p1, Lcom/iLoong/launcher/a/c;->n:I

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->as:[I

    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->as:[I

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v0, 0x0

    aget v5, v9, v0

    const/4 v0, 0x1

    aget v6, v9, v0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(III[IIIZ)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    invoke-virtual {v0, v8}, Lcom/iLoong/launcher/widget/a;->deleteAppWidgetId(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    aget v0, v9, v0

    iput v0, p1, Lcom/iLoong/launcher/a/c;->w:I

    const/4 v0, 0x1

    aget v0, v9, v0

    iput v0, p1, Lcom/iLoong/launcher/a/c;->x:I

    const/4 v0, 0x0

    aget v0, v4, v0

    iput v0, p1, Lcom/iLoong/launcher/a/c;->s:I

    const/4 v0, 0x1

    aget v0, v4, v0

    iput v0, p1, Lcom/iLoong/launcher/a/c;->t:I

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    iget-object v1, p1, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget v2, p1, Lcom/iLoong/launcher/a/c;->n:I

    iget v3, p1, Lcom/iLoong/launcher/a/c;->p:I

    iget v4, p1, Lcom/iLoong/launcher/a/c;->q:I

    iget v5, p1, Lcom/iLoong/launcher/a/c;->w:I

    iget v6, p1, Lcom/iLoong/launcher/a/c;->x:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;IIIIIZ)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 3

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    :cond_0
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/ComponentName;II[I)[I
    .locals 4

    if-nez p4, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 3

    const/16 v0, 0x63

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iget v1, v1, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->c:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->R:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "iLoong.widget.3d"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d(I)V

    goto :goto_0
.end method

.method b(Landroid/content/Intent;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    const v2, 0x7f0c004d

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public b(Lcom/iLoong/launcher/a/e;)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->C:Lcom/iLoong/launcher/a/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->A:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->showDialog(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "com.mediatek.appwidget.video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 3

    const/16 v0, 0x63

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iget v1, v1, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->a:I

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ao:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iget v2, v2, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->b:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/iLoong/launcher/a/h;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/iLoong/launcher/a/h;

    invoke-direct {v0}, Lcom/iLoong/launcher/a/h;-><init>()V

    iput-object p1, v0, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    iput v1, v0, Lcom/iLoong/launcher/a/h;->p:I

    iput v1, v0, Lcom/iLoong/launcher/a/h;->q:I

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 3

    const v2, 0x7f0c00e8

    const v1, 0x7f0c00e7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    :cond_0
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->T:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aD:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;

    sput-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->N:Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->N:Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;

    return-object v0
.end method

.method d(I)V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->B:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :pswitch_0
    :sswitch_1
    return v0

    :sswitch_2
    iget-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->w()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/cling/i;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x19 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->P:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public e(I)V
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v2, p1}, Lcom/iLoong/launcher/Workspace/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/iLoong/launcher/Workspace/CellLayout;

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    invoke-virtual {v7}, Lcom/iLoong/launcher/Workspace/CellLayout;->getChildCount()I

    move-result v2

    if-lt v8, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v7, v8}, Lcom/iLoong/launcher/Workspace/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/widget/d;->a(JJIFF)I

    move-result v2

    invoke-static {v9, v2}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendUpdateSysWidgetMsg(Landroid/view/View;I)V

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0
.end method

.method public f()Lcom/iLoong/launcher/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->g()Lcom/iLoong/launcher/d/a;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->am:Lcom/iLoong/launcher/SetupMenu/r;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/r;->b()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iLoong/launcher/desktop/e;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/desktop/e;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected i()V
    .locals 5

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ad:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ab:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ac:I

    iget v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ab:I

    if-ge v3, v2, :cond_0

    iput v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ab:I

    :cond_0
    iget v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ac:I

    if-ge v3, v1, :cond_1

    iput v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ac:I

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bF:Z

    if-eqz v1, :cond_2

    iput v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ab:I

    :cond_2
    new-instance v1, Lcom/iLoong/launcher/desktop/d;

    const-string v2, "setWallpaperDimension"

    invoke-direct {v1, p0, v2}, Lcom/iLoong/launcher/desktop/d;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/d;->start()V

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_3
    int-to-float v3, v2

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ab:I

    iput v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ac:I

    goto :goto_0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->showDialog(I)V

    return-void
.end method

.method public k()V
    .locals 10

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/a;->allocateAppWidgetId()I

    move-result v0

    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Lcom/iLoong/launcher/Workspace/c;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/Workspace/c;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ai:Lcom/iLoong/launcher/Workspace/c;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ai:Lcom/iLoong/launcher/Workspace/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Workspace/c;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ai:Lcom/iLoong/launcher/Workspace/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Workspace/c;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    const-string v0, "customInfo"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "customExtras"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    const-string v0, "android.intent.extra.TITLE"

    const v1, 0x7f0c00b0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x9

    invoke-virtual {p0, v2, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ai:Lcom/iLoong/launcher/Workspace/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/a;

    iget-boolean v5, v0, Lcom/iLoong/launcher/Workspace/a;->e:Z

    if-eqz v5, :cond_5

    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/iLoong/launcher/Workspace/a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v6, v0, Lcom/iLoong/launcher/Workspace/a;->b:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iget-object v6, v0, Lcom/iLoong/launcher/Workspace/a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.iLoong.Robot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v0, Lcom/iLoong/launcher/Workspace/a;->d:I

    if-ne v6, v9, :cond_6

    const v6, 0x7f020004

    iput v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    :cond_2
    :goto_1
    iget-object v6, v0, Lcom/iLoong/launcher/Workspace/a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.iLoong.Memo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f020003

    iput v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    :cond_3
    iget-object v6, v0, Lcom/iLoong/launcher/Workspace/a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.iLoong.Knife"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f020002

    iput v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "iLoong.widget.3d"

    iget-object v0, v0, Lcom/iLoong/launcher/Workspace/a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    const v6, 0x7f020005

    iput v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    goto :goto_1

    :cond_7
    iget-object v6, v0, Lcom/iLoong/launcher/Workspace/a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.iLoong.Clock"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/iLoong/launcher/Workspace/a;->d:I

    if-ne v6, v9, :cond_8

    const/high16 v6, 0x7f02

    iput v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    goto :goto_1

    :cond_8
    const v6, 0x7f020001

    iput v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    goto :goto_1
.end method

.method public l()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bv:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0c001d

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public m()Lcom/iLoong/launcher/widget/a;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    return-object v0
.end method

.method public n()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->dismissDialog(I)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->A:Z

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    iput-boolean v1, v0, Lcom/iLoong/launcher/d/a;->i:Z

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->C:Lcom/iLoong/launcher/a/e;

    iput-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    return-void
.end method

.method public o()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->q:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aq:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->r:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iput-boolean v4, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->A:Z

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v3, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->n()I

    move-result v2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->as:[I

    aget v3, v0, v4

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->as:[I

    aget v4, v0, v5

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/Intent;IIIZ)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    :cond_2
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/widget/a;->deleteAppWidgetId(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->resetSize()V

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "utils3d width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bs:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->al:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->al:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restartSystem:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->al:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->al:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->d()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->al:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    sput v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->n:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l:J

    sub-long/2addr v3, v1

    const-string v5, "boot_complete_time"

    const-wide/16 v6, -0x1

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_9

    const-wide/32 v3, 0x1d4c0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_8

    const/4 v1, 0x1

    sput-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->r:Z

    :goto_0
    sput-object p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->O:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->g:Z

    const-string v1, "iLoongLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launcher\u542f\u52a8 mInstance="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/iLoong/launcher/desktop/iLoongLauncher;->O:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->calibration()V

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->E()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, ""

    sput-object v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->x:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    sput v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->y:I

    :goto_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->al:Ljava/lang/String;

    const-string v1, "first_run"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/a/f;->d:Z

    const-string v0, "clear"

    const-string v1, "is first run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ak:Z

    :cond_0
    const-string v0, "1"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->J()V

    const-string v0, "2"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/cb;

    invoke-direct {v0}, Lcom/iLoong/launcher/Desktop3D/cb;-><init>()V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->au:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iLoong.launcher.desktop.WallpaperChooser"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1
    const-string v0, "3"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ad:Landroid/app/WallpaperManager;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ad:Landroid/app/WallpaperManager;

    :cond_2
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ae:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/iLoong/launcher/desktop/AdminReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->af:Landroid/content/ComponentName;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/c;->e()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->i()V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/c;->b(I)V

    :cond_3
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->be:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a()V

    :cond_4
    new-instance v0, Lcom/iLoong/launcher/desktop/i;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/desktop/i;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ah:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ah:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.cooee.launcher.restart"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/g;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/Desktop3D/g;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {p0}, Lcom/iLoong/launcher/b/e;->a(Landroid/content/Context;)V

    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->setContentView(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/Desktop3D/g;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->M:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/desktop/iLoongApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongApplication;->a(Z)V

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->K:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->B:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Lcom/iLoong/launcher/widget/a;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/widget/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c:Lcom/iLoong/launcher/widget/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/a;->startListening()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->v()V

    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/Workspace;

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/c;->c()I

    move-result v0

    if-nez v0, :cond_5

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->P:I

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/i;->a()Lcom/iLoong/launcher/theme/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/theme/c;->a(I)V

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v0, :cond_10

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->M()V

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->E:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->E:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/os/Bundle;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->F:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->F:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->W:Landroid/os/Vibrator;

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->u()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->X:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->setVolumeControlStream(I)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aO:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/r;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/SetupMenu/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->am:Lcom/iLoong/launcher/SetupMenu/r;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->am:Lcom/iLoong/launcher/SetupMenu/r;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/r;->a()V

    :cond_6
    new-instance v0, Lcom/iLoong/launcher/airpush/AirPush;

    invoke-direct {v0}, Lcom/iLoong/launcher/airpush/AirPush;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    const-string v0, "onCreate end"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->by:Z

    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.salesystem.broadcast.receiver.SALE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "basicom"

    const-string v2, "wuqingyuan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.salesystem.permesion.receiver"

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v0, "Launcher"

    const-string v1, "SALE_ACTION has send..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    const/4 v1, 0x0

    sput-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->r:Z

    goto/16 :goto_0

    :cond_9
    cmp-long v3, v3, v5

    if-gtz v3, :cond_b

    sget-wide v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_a

    const/4 v1, 0x1

    sput-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->r:Z

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    sput-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->r:Z

    goto/16 :goto_0

    :cond_b
    const-wide/32 v3, 0x1d4c0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_c

    const/4 v1, 0x1

    sput-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->r:Z

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    sput-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->r:Z

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    sput v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->y:I

    goto/16 :goto_1

    :cond_e
    const-string v1, " "

    sput-object v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->x:Ljava/lang/String;

    const/4 v1, 0x2

    sput v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->y:I

    goto/16 :goto_1

    :cond_f
    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/a/f;->d:Z

    goto/16 :goto_2

    :cond_10
    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Workspace/Workspace;->b()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v1, 0x0

    iput p1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ar:I

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/iLoong/launcher/desktop/ae;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/ae;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/ae;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/ae;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/iLoong/launcher/desktop/n;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/n;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/n;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/n;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/iLoong/launcher/desktop/an;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/an;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/an;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/an;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/iLoong/launcher/desktop/as;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/as;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/as;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/as;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/iLoong/launcher/desktop/at;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/at;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/at;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/at;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/iLoong/launcher/desktop/a;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/a;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/a;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/a;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/iLoong/launcher/desktop/be;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/be;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/be;)V

    iget v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Z:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/be;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/iLoong/launcher/desktop/ae;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/ae;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/ae;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/ae;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/iLoong/launcher/desktop/y;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/y;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/y;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/y;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/iLoong/launcher/desktop/ao;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/desktop/ao;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/desktop/ao;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/ao;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/AirPush;->h()V

    :cond_0
    const-string v0, "iLoongLauncher"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->g:Z

    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onDestroy()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->M:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->M:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->Release()V

    :cond_2
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->b()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ah:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ah:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 v4, 0x52

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x41

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aq:Z

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/g;->g()Lcom/iLoong/launcher/d/a;

    move-result-object v2

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aa:Z

    const/4 v3, 0x7

    if-lt p1, v3, :cond_4

    const/16 v3, 0x10

    if-le p1, v3, :cond_5

    :cond_4
    const/16 v3, 0x11

    if-eq p1, v3, :cond_5

    const/16 v3, 0x12

    if-ne p1, v3, :cond_6

    :cond_5
    const-string v0, "search"

    const-string v1, "keydown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "search"

    const-string v1, "on search"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->onSearchRequested()Z

    move-result v0

    goto :goto_0

    :cond_6
    if-ne p1, v4, :cond_7

    if-eqz v2, :cond_7

    iget-object v3, v2, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-boolean v3, v3, Lcom/iLoong/launcher/a/h;->e:Z

    if-eqz v3, :cond_7

    new-instance v0, Lcom/iLoong/launcher/desktop/g;

    invoke-direct {v0, p0, v2}, Lcom/iLoong/launcher/desktop/g;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/d/a;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    :cond_7
    if-ne p1, v4, :cond_8

    if-eqz v2, :cond_8

    iget-object v3, v2, Lcom/iLoong/launcher/d/a;->b:Lcom/iLoong/launcher/d/d;

    if-eqz v3, :cond_8

    new-instance v0, Lcom/iLoong/launcher/desktop/f;

    invoke-direct {v0, p0, v2}, Lcom/iLoong/launcher/desktop/f;-><init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;Lcom/iLoong/launcher/d/a;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x41

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v0, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aq:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aq:Z

    const/16 v0, 0x52

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->k()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aa:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->b()Lcom/iLoong/launcher/Desktop3D/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->p()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v4

    if-eqz v4, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_5

    :cond_4
    move v0, v3

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->M:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->PopSetupMenu()V

    move v2, v3

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v0, v0, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v0, :cond_6

    invoke-virtual {v4, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/f;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aa:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->b()Lcom/iLoong/launcher/Desktop3D/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->p()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v4

    move v1, v2

    :goto_3
    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_8

    move v0, v3

    :goto_4
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->b()Lcom/iLoong/launcher/Desktop3D/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move v2, v3

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v0, v0, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v0, :cond_9

    invoke-virtual {v4, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/f;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    const/high16 v6, 0x40

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onNewIntent(Landroid/content/Intent;)V

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/airpush/AirPush;->a(Landroid/content/Intent;)V

    :cond_2
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->p()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v4

    if-eqz v4, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_7

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->d(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ay;->c()V

    :cond_4
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_6

    move v2, v3

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/g;->a(Z)V

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "alreadyOnHome="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v4, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v0, v0, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v0, :cond_8

    invoke-virtual {v4, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Widget3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/f;->d()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/iLoong/launcher/Widget3D/f;->a(II)V

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 6

    const/4 v4, 0x0

    const-string v0, "iLoongLauncher"

    const-string v1, "Launcher onPause()0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/AirPush;->e()V

    :cond_0
    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->j:Z

    if-eqz v0, :cond_1

    sput-boolean v4, Lcom/iLoong/launcher/desktop/iLoongLauncher;->j:Z

    const-string v0, "launcher"

    invoke-virtual {p0, v0, v4}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "boot_complete_time"

    sget-wide v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->k:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->p()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m()V

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->I()V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.launcher.changed.pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, La/a/a;

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v3}, Lcom/iLoong/launcher/Desktop3D/g;->n()I

    move-result v3

    invoke-interface {v0, v3}, La/a/a;->g(I)V

    const-string v0, "launcher"

    const-string v3, "onPauseWhenShown"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/iLoong/launcher/Desktop3D/g;->k:Z

    const-string v0, "iLoongLauncher"

    const-string v3, "Launcher onPause()1"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/g;->e()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->M:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->M:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->CloseMenu()V

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/c/f;->c()V

    :cond_6
    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_7
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    iget-boolean v0, v0, Lcom/iLoong/launcher/d/a;->i:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->n()V

    :cond_8
    sget-object v0, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0}, Laurelienribon/tweenengine/TweenManager;->pause()V

    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onPause()V

    const-string v0, "iLoongLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launcher onPause()22:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->C:Lcom/iLoong/launcher/a/e;

    if-eqz v0, :cond_0

    const v0, 0x7f08001a

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->C:Lcom/iLoong/launcher/a/e;

    iget-object v1, v1, Lcom/iLoong/launcher/a/e;->f:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    const-string v2, "x.z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    iget-object v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->C:Lcom/iLoong/launcher/a/e;

    const/4 v4, 0x0

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/iLoong/launcher/a/e;->f:Ljava/lang/CharSequence;

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->C:Lcom/iLoong/launcher/a/e;

    iget-object v1, v1, Lcom/iLoong/launcher/a/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "iLoongLauncher"

    const-string v1, "Launcher onResume() start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->j:Z

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/iLoong/launcher/desktop/iLoongLauncher;->j:Z

    const-string v0, "launcher"

    invoke-virtual {p0, v0, v4}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "boot_complete_time"

    sget-wide v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->k:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->p()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m()V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->c()Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->a()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->I()V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.launcher.changed.pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/AirPush;->d()V

    :cond_3
    const-string v0, "start onResume"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->z:J

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/Workspace;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, La/a/a;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/g;->n()I

    move-result v1

    invoke-interface {v0, v1}, La/a/a;->h(I)V

    const-string v0, "launcher"

    const-string v1, "onResumeWhenShown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v0, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0}, Laurelienribon/tweenengine/TweenManager;->resume()V

    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onResume()V

    iput-boolean v4, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->J:Z

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    iput-boolean v4, v0, Lcom/iLoong/launcher/Desktop3D/g;->k:Z

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/g;->l:Z

    if-eqz v0, :cond_5

    iput-boolean v5, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->G:Z

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->K:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-virtual {v0, p0, v5}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    iput-boolean v4, v0, Lcom/iLoong/launcher/Desktop3D/g;->l:Z

    const-string v0, "launcher"

    const-string v1, "mOnResumeNeedsLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/g;->g()V

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Q()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->v:Z

    if-eqz v0, :cond_6

    iput-boolean v4, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->v:Z

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->resetSize()V

    const-string v0, "resize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "utils3d width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    if-le v0, v1, :cond_6

    const-string v0, "resize"

    const-string v1, "checkSize:now Restarting..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->d()V

    :cond_6
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    const-string v0, "end onResume"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    const-string v0, "iLoongLauncher"

    const-string v1, "Launcher onResume() end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return v1
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/AirPush;->f()V

    :cond_0
    const-string v0, "iLoongLauncher"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->s:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->i()V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->av:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cooee.launcher.action.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onStart()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ANDROID_LAB"

    const-string v1, "ActOccurError.finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->finish()V

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-virtual {v0}, Lcom/iLoong/launcher/airpush/AirPush;->g()V

    :cond_0
    const-string v0, "iLoongLauncher"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->s:Z

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/g;->f()V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/c/f;->c()V

    :cond_1
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->a:Lcom/iLoong/launcher/UI3DEngine/l;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->a:Lcom/iLoong/launcher/UI3DEngine/l;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    :cond_2
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->av:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cooee.launcher.action.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onStop()V

    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->g:Z

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/g;->u()Lcom/iLoong/launcher/cling/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/cling/i;->a(Lcom/iLoong/launcher/cling/l;)V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/d;

    invoke-direct {v0}, Lcom/iLoong/launcher/Desktop3D/d;-><init>()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCreateRestartDialogMsg()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ak:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->N()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->ak:Z

    goto :goto_0
.end method

.method public q()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->H:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->H:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->dismissDialog(I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->I:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->dismissDialog(I)V

    :cond_0
    return-void
.end method

.method public s()Lcom/iLoong/launcher/Desktop3D/g;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    return-object v0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6

    const-string v0, "search"

    const-string v1, "startSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->K()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->L()V

    :goto_0
    if-nez p3, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "source"

    const-string v2, "launcher-search"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    return-void

    :cond_0
    move-object v4, p3

    goto :goto_1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->r()Z

    move-result v0

    goto :goto_0
.end method

.method public u()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/aa;)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const/16 v1, 0x45b

    invoke-virtual {v0, v1, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/aa;)V

    return-void
.end method

.method public v()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-boolean v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aa:Z

    const-string v1, "cling.introduction.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->f()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aa:Z

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->K:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/x;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->o()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h()V

    goto :goto_0
.end method

.method public w()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->K:Lcom/iLoong/launcher/app/LauncherModel;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/app/LauncherModel;->a(Lcom/iLoong/launcher/app/x;)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCreateProgressDialogMsg()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h()V

    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling.introduction.dismissed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->i:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aa:Z

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->t()V

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->Y:Z

    goto :goto_0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->n()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->o()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/c/f;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/c/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->aj:Lcom/iLoong/launcher/c/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/c/f;->a()Z

    move-result v0

    return v0
.end method
