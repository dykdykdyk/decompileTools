.class public final Lcom/google/android/gms/maps/j;
.super Lcom/google/android/gms/maps/a/bj;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/k;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/j;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/j;->a:Lcom/google/android/gms/maps/k;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/bj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/a/p;)Lcom/google/android/gms/dynamic/h;
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/maps/model/a/p;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/h;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/maps/model/a/p;)Lcom/google/android/gms/dynamic/h;
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/maps/model/a/p;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/h;

    move-result-object v0

    return-object v0
.end method
