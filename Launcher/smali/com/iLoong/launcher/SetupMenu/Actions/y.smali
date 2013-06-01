.class public Lcom/iLoong/launcher/SetupMenu/Actions/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/y;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/y;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/y;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/y;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/s;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    return-void
.end method
