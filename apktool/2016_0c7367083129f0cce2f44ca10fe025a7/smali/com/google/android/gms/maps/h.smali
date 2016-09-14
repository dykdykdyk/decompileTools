.class public final Lcom/google/android/gms/maps/h;
.super Lcom/google/android/gms/maps/a/di;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/o;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/h;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/h;->a:Lcom/google/android/gms/maps/o;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/a/p;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/h;->a:Lcom/google/android/gms/maps/o;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/maps/model/a/p;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/o;->a(Lcom/google/android/gms/maps/model/f;)Z

    move-result v0

    return v0
.end method
