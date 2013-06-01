.class public Lcom/iLoong/launcher/SetupMenu/SetupMenu;
.super Ljava/lang/Object;


# static fields
.field public static final BITMAPCELLWIDTH:I = 0x50

.field public static final BITMAPSCALE:F = 1.5f

.field public static final POPMENU_STYLE_ANDROID4:I = 0x1

.field public static final POPMENU_STYLE_ORIGINAL:I = 0x0

.field public static final SETUPMENUT_INDICATOR_FOCUSED:Ljava/lang/String; = "setupmenu/indicator_focused.png"

.field public static final SETUPMENUT_INDICATOR_NORMAL:Ljava/lang/String; = "setupmenu/indicator_normal.png"

.field public static final SETUPMENU_ANDROID4_FOLDERNAME:Ljava/lang/String; = "setupmenu_android4/"

.field public static SETUPMENU_BG_CLOLOR:Ljava/lang/String; = null

.field public static SETUPMENU_FOLDERNAME:Ljava/lang/String; = null

.field public static final SETUPMENU_ORIGINAL_FOLDERNAME:Ljava/lang/String; = "setupmenu/"

.field public static final SETUPMENU_SPACING:Ljava/lang/String; = "setupmenu/smspacing.png"

.field public static final SETUPMENU_TOP_EDGE:Ljava/lang/String; = "setupmenu/smtopedge.png"

.field public static final SETUPMENU_TOP_MID:Ljava/lang/String; = "setupmenu/smtopmid.png"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field public static final TAG_MENU:Ljava/lang/String; = "menu"

.field public static final TAG_SETUPMENU:Ljava/lang/String; = "setupmenu"

.field private static d:Landroid/content/Context;

.field public static mInstance:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

.field public static mScale:F

.field public static mScreenScale:F


# instance fields
.field public final BITMAPCELLHEIGHT:I

.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/HashMap;

.field private c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

.field public mCellHeight:I

.field public mCellWidth:I

.field public mHeight:I

.field public mHeightGap:I

.field public mOpen:Z

.field public mTabCellWidth:I

.field public mWidth:I

.field public mWidthGap:I

.field public mcolumns:I

.field public mrows:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f80

    sput v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->b:Ljava/util/HashMap;

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mcolumns:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mrows:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mHeight:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidthGap:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mHeightGap:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellWidth:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellHeight:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mTabCellWidth:I

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mOpen:Z

    sput-object p1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->d:Landroid/content/Context;

    sput-object p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mInstance:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    if-ne v0, v1, :cond_0

    const-string v0, "setupmenu_android4/"

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->SETUPMENU_FOLDERNAME:Ljava/lang/String;

    const/16 v0, 0x30

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->BITMAPCELLHEIGHT:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->SETUPMENU_FOLDERNAME:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "bg.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->SETUPMENU_BG_CLOLOR:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->LoadSetupMenuXml()V

    sget-object v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mHeight:I

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    sget v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    const/high16 v2, 0x3fc0

    div-float/2addr v0, v2

    sput v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mcolumns:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellWidth:I

    sget-object v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->d:Landroid/content/Context;

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->BITMAPCELLHEIGHT:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellHeight:I

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mWidth:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-double v2, v0

    const-wide v4, 0x3feff7ced916872bL

    add-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mTabCellWidth:I

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-direct {v0, p1}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a(Lcom/iLoong/launcher/SetupMenu/SetupMenu;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->h()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setFocusable(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setFocusableInTouchMode(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast p1, Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {p1, v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "setupmenu/"

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->SETUPMENU_FOLDERNAME:Ljava/lang/String;

    const/16 v0, 0x43

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->BITMAPCELLHEIGHT:I

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static DialogMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c002f

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/b;

    invoke-direct {v2}, Lcom/iLoong/launcher/SetupMenu/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0030

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/c;

    invoke-direct {v2}, Lcom/iLoong/launcher/SetupMenu/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mInstance:Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    return-object v0
.end method

.method public static getKey(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static phoneinfo()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PHONE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";SDK:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";RELEASE:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";BOARD:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";BOOTLOADER:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";BRAND:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";CPU_ABI:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";CPU_ABI2:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";DEVICE:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";DISPLAY:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";FINGERPRINT:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";HARDWARE:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";HOST:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";ID:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";MANUFACTURER:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";MODEL:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";PRODUCT:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";RADIO:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";TAGS:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";TIME:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, ";TYPE:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";USER:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto/16 :goto_0
.end method


# virtual methods
.method public CloseMenu()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setFocusable(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mOpen:Z

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    return-void
.end method

.method public LoadSetupMenuXml()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mrows:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mcolumns:I

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bi:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_1
    array-length v6, v3

    if-lt v0, v6, :cond_3

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bi:Z

    if-nez v0, :cond_0

    move v3, v2

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_8

    :cond_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    if-ne v0, v1, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mrows:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mcolumns:I

    :cond_1
    new-instance v3, Lcom/iLoong/launcher/SetupMenu/x;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/SetupMenu/x;-><init>(Lcom/iLoong/launcher/SetupMenu/SetupMenu;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/iLoong/launcher/SetupMenu/x;->a:I

    invoke-static {}, Lcom/iLoong/a;->a()Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {}, Lcom/iLoong/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/iLoong/launcher/SetupMenu/x;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->b:Ljava/util/HashMap;

    iget v5, v3, Lcom/iLoong/launcher/SetupMenu/x;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_a

    :goto_5
    return-void

    :cond_2
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_0

    :cond_3
    aget-object v6, v3, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v6, v3, v0

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ad:Z

    if-eqz v0, :cond_7

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x3ec

    if-ne v0, v6, :cond_5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_6
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aW:Z

    if-nez v0, :cond_6

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x3fa

    if-ne v0, v6, :cond_6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x3eb

    if-ne v0, v6, :cond_5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5

    :cond_8
    :try_start_1
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aN:Z

    if-eqz v0, :cond_9

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x3ee

    if-ne v0, v3, :cond_9

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->b:Ljava/util/HashMap;

    iget v1, v3, Lcom/iLoong/launcher/SetupMenu/x;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/iLoong/launcher/SetupMenu/a;

    invoke-direct {v5, p0}, Lcom/iLoong/launcher/SetupMenu/a;-><init>(Lcom/iLoong/launcher/SetupMenu/SetupMenu;)V

    iget v6, v3, Lcom/iLoong/launcher/SetupMenu/x;->a:I

    iput v6, v5, Lcom/iLoong/launcher/SetupMenu/a;->a:I

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/iLoong/launcher/SetupMenu/a;->b:I

    invoke-static {}, Lcom/iLoong/a;->a()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {}, Lcom/iLoong/a;->a()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/iLoong/launcher/SetupMenu/a;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->SETUPMENU_FOLDERNAME:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    aget-object v1, v1, v7

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".png"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/iLoong/launcher/SetupMenu/a;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    sget-object v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v6, v5, Lcom/iLoong/launcher/SetupMenu/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v5, Lcom/iLoong/launcher/SetupMenu/a;->e:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_7
    :try_start_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public PopSetupMenu()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mOpen:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideWorkspaceMsg()V

    iput-boolean v2, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mOpen:Z

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setVisibility(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setFocusable(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->requestFocus()Z

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->a()V

    goto :goto_0
.end method

.method public Release()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->d()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/SetupMenu/a;

    iget-object v1, v1, Lcom/iLoong/launcher/SetupMenu/a;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/SetupMenu/a;

    iget-object v1, v1, Lcom/iLoong/launcher/SetupMenu/a;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/SetupMenu/a;

    iget-object v1, v1, Lcom/iLoong/launcher/SetupMenu/a;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/SetupMenu/a;

    iget-object v1, v1, Lcom/iLoong/launcher/SetupMenu/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public getMenuDeskTop()Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    return-object v0
.end method

.method public getMenuItem(I)Lcom/iLoong/launcher/SetupMenu/a;
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/SetupMenu/a;

    iget v1, v1, Lcom/iLoong/launcher/SetupMenu/a;->b:I

    if-ne v1, p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/a;

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getSetMenuDesktop()Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->c:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    return-object v0
.end method
