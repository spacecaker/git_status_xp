.class public Lcom/iLoong/launcher/SetupMenu/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/h;->a:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/h;->a:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/a;

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/h;->a:Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;

    invoke-virtual {v1}, Lcom/iLoong/launcher/SetupMenu/SetMenuDesktop;->i()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v1

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/a;->b:I

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    check-cast p1, Lcom/iLoong/launcher/SetupMenu/v;

    invoke-virtual {p1}, Lcom/iLoong/launcher/SetupMenu/v;->a()V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lcom/iLoong/launcher/SetupMenu/v;

    invoke-virtual {p1}, Lcom/iLoong/launcher/SetupMenu/v;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
