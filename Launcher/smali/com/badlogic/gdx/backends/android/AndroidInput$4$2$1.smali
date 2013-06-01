.class Lcom/badlogic/gdx/backends/android/AndroidInput$4$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;

.field private final synthetic val$listener:Lcom/badlogic/gdx/Input$TextInputListener;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2$1;->this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2$1;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2$1;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input$TextInputListener;->canceled()V

    return-void
.end method
