.class public Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction;
.super Lcom/iLoong/launcher/SetupMenu/Actions/ac;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction;->a(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static a()V
    .locals 4

    const/16 v3, 0x454

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction;

    const-class v2, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 1

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getSetMenuDesktop()Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->c()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction;->j()V

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method
