.class public final Lcom/google/android/gms/dynamic/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/g;


# instance fields
.field final synthetic a:Lcom/google/android/gms/dynamic/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/f;->a:Lcom/google/android/gms/dynamic/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/f;->a:Lcom/google/android/gms/dynamic/b;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/a;->a()V

    return-void
.end method
