.class public final Lcom/google/android/gms/maps/g;
.super Lcom/google/android/gms/maps/a/bm;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/l;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/g;->a:Lcom/google/android/gms/maps/l;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/g;->a:Lcom/google/android/gms/maps/l;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/l;->a(Lcom/google/android/gms/maps/model/CameraPosition;)V

    return-void
.end method
