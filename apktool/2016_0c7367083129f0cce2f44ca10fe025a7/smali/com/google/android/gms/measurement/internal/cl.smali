.class final Lcom/google/android/gms/measurement/internal/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/AppMetadata;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/cf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/cf;Lcom/google/android/gms/measurement/internal/AppMetadata;Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/cl;->c:Lcom/google/android/gms/measurement/internal/cf;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/cl;->a:Lcom/google/android/gms/measurement/internal/AppMetadata;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/cl;->b:Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/cl;->c:Lcom/google/android/gms/measurement/internal/cf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/cf;->a(Lcom/google/android/gms/measurement/internal/cf;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->r()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/cl;->c:Lcom/google/android/gms/measurement/internal/cf;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/cl;->a:Lcom/google/android/gms/measurement/internal/AppMetadata;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMetadata;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/cf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/cl;->c:Lcom/google/android/gms/measurement/internal/cf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/cf;->a(Lcom/google/android/gms/measurement/internal/cf;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/cl;->b:Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/cl;->a:Lcom/google/android/gms/measurement/internal/AppMetadata;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ca;->a(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    return-void
.end method
