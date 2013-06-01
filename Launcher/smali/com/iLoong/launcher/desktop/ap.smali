.class Lcom/iLoong/launcher/desktop/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/be;

.field private final synthetic b:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/be;Landroid/widget/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/ap;->a:Lcom/iLoong/launcher/desktop/be;

    iput-object p2, p0, Lcom/iLoong/launcher/desktop/ap;->b:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ap;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const/4 v0, -0x1

    const v2, 0x7f080027

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/ap;->a:Lcom/iLoong/launcher/desktop/be;

    invoke-static {v1}, Lcom/iLoong/launcher/desktop/be;->b(Lcom/iLoong/launcher/desktop/be;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/ap;->a:Lcom/iLoong/launcher/desktop/be;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/be;->a(Lcom/iLoong/launcher/desktop/be;)V

    return-void

    :cond_1
    const v2, 0x7f080026

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const v2, 0x7f080028

    if-ne v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const v2, 0x7f080025

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method
