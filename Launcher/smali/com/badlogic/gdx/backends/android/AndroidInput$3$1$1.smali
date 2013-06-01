.class Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;

.field private final synthetic val$input:Landroid/widget/EditText;

.field private final synthetic val$listener:Lcom/badlogic/gdx/Input$TextInputListener;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;->this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input$TextInputListener;->input(Ljava/lang/String;)V

    return-void
.end method
