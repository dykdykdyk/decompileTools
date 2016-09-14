.class final Lcom/squareup/picasso/BitmapHunter$3;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$e:Ljava/lang/RuntimeException;

.field final synthetic val$transformation:Lcom/squareup/picasso/Transformation;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Transformation;Ljava/lang/RuntimeException;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter$3;->val$transformation:Lcom/squareup/picasso/Transformation;

    iput-object p2, p0, Lcom/squareup/picasso/BitmapHunter$3;->val$e:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 433
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transformation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter$3;->val$transformation:Lcom/squareup/picasso/Transformation;

    .line 434
    invoke-interface {v2}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " crashed with exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter$3;->val$e:Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
