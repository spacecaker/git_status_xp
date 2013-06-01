.class Lcom/iLoong/launcher/app/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/iLoong/launcher/a/b;Lcom/iLoong/launcher/a/b;)I
    .locals 3

    invoke-static {}, Lcom/iLoong/launcher/app/LauncherModel;->f()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p1, Lcom/iLoong/launcher/a/b;->o:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/iLoong/launcher/a/b;->o:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/iLoong/launcher/a/b;

    check-cast p2, Lcom/iLoong/launcher/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/app/an;->a(Lcom/iLoong/launcher/a/b;Lcom/iLoong/launcher/a/b;)I

    move-result v0

    return v0
.end method
