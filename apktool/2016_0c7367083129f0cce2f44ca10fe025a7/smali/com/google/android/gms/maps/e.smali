.class public final Lcom/google/android/gms/maps/e;
.super Lcom/google/android/gms/maps/a/h;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/p;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/e;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/e;->a:Lcom/google/android/gms/maps/p;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/e;->a:Lcom/google/android/gms/maps/p;

    invoke-interface {v0}, Lcom/google/android/gms/maps/p;->b()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/a/cs;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/e;->a:Lcom/google/android/gms/maps/p;

    new-instance v1, Lcom/google/android/gms/maps/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/f;-><init>(Lcom/google/android/gms/maps/e;Lcom/google/android/gms/maps/a/cs;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/p;->a(Lcom/google/android/gms/maps/q;)V

    return-void
.end method
