.class final Lcom/nut/blehunter/ui/widget/y;
.super Ljava/lang/Object;
.source "WeekDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/widget/WeekDatePicker;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/widget/WeekDatePicker;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/y;->a:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/y;->a:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/y;->a:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/y;->a:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    invoke-virtual {v2}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->getScrollX()I

    move-result v2

    invoke-static {v1, v2}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->a(Lcom/nut/blehunter/ui/widget/WeekDatePicker;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->b(Lcom/nut/blehunter/ui/widget/WeekDatePicker;I)Lorg/threeten/bp/j;

    .line 1088
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/y;->a:Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->b(Lcom/nut/blehunter/ui/widget/WeekDatePicker;)Lcom/nut/blehunter/ui/widget/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/ui/widget/aa;->a()V

    .line 1089
    return-void
.end method
