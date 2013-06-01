.class Lcom/iLoong/launcher/desktop/bb;
.super Landroid/text/InputFilter$LengthFilter;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/n;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/n;I)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/bb;->a:Lcom/iLoong/launcher/desktop/n;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, " "

    :cond_0
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->B()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/bb;->a:Lcom/iLoong/launcher/desktop/n;

    invoke-static {v1}, Lcom/iLoong/launcher/desktop/n;->c(Lcom/iLoong/launcher/desktop/n;)Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    const v2, 0x7f0c0072

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string p1, ""

    :cond_1
    return-object p1
.end method
