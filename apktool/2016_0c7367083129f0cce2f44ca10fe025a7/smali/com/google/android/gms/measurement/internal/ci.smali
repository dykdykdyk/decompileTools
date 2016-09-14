.class final Lcom/google/android/gms/measurement/internal/ci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/EventParcel;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/cf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/cf;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ci;->d:Lcom/google/android/gms/measurement/internal/cf;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ci;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/ci;->b:Lcom/google/android/gms/measurement/internal/EventParcel;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/ci;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ci;->d:Lcom/google/android/gms/measurement/internal/cf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/cf;->a(Lcom/google/android/gms/measurement/internal/cf;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->r()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ci;->d:Lcom/google/android/gms/measurement/internal/cf;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ci;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/cf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ci;->d:Lcom/google/android/gms/measurement/internal/cf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/cf;->a(Lcom/google/android/gms/measurement/internal/cf;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ci;->b:Lcom/google/android/gms/measurement/internal/EventParcel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ci;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ca;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V

    return-void
.end method
