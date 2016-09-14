.class final Lcom/nut/blehunter/ui/bi;
.super Ljava/lang/Object;
.source "LocationRecordActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/widget/aa;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LocationRecordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LocationRecordActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/nut/blehunter/ui/bi;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nut/blehunter/ui/bi;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/bi;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LocationRecordActivity;->b(Lcom/nut/blehunter/ui/LocationRecordActivity;)Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getSelectedWeek()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(Lcom/nut/blehunter/ui/LocationRecordActivity;I)V

    .line 112
    return-void
.end method
