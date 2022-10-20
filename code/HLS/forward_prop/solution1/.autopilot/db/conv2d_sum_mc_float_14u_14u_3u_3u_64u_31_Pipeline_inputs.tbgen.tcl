set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.31_Pipeline_inputs}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_31 int 288 regular {fifo 0 volatile }  }
	{ weights_load float 32 regular {ap_stable 0} }
	{ weights_load_3451 float 32 regular {ap_stable 0} }
	{ weights_load_3452 float 32 regular {ap_stable 0} }
	{ weights_load_3453 float 32 regular {ap_stable 0} }
	{ weights_load_3454 float 32 regular {ap_stable 0} }
	{ weights_load_3455 float 32 regular {ap_stable 0} }
	{ weights_load_3456 float 32 regular {ap_stable 0} }
	{ weights_load_3457 float 32 regular {ap_stable 0} }
	{ weights_load_3458 float 32 regular {ap_stable 0} }
	{ in_channel_map_stream_31 int 32 regular {fifo 1 volatile }  }
	{ weights_load_3459 float 32 regular {ap_stable 0} }
	{ weights_load_3460 float 32 regular {ap_stable 0} }
	{ weights_load_3461 float 32 regular {ap_stable 0} }
	{ weights_load_3462 float 32 regular {ap_stable 0} }
	{ weights_load_3463 float 32 regular {ap_stable 0} }
	{ weights_load_3464 float 32 regular {ap_stable 0} }
	{ weights_load_3465 float 32 regular {ap_stable 0} }
	{ weights_load_3466 float 32 regular {ap_stable 0} }
	{ weights_load_3467 float 32 regular {ap_stable 0} }
	{ weights_load_3468 float 32 regular {ap_stable 0} }
	{ weights_load_3469 float 32 regular {ap_stable 0} }
	{ weights_load_3470 float 32 regular {ap_stable 0} }
	{ weights_load_3471 float 32 regular {ap_stable 0} }
	{ weights_load_3472 float 32 regular {ap_stable 0} }
	{ weights_load_3473 float 32 regular {ap_stable 0} }
	{ weights_load_3474 float 32 regular {ap_stable 0} }
	{ weights_load_3475 float 32 regular {ap_stable 0} }
	{ weights_load_3476 float 32 regular {ap_stable 0} }
	{ weights_load_3477 float 32 regular {ap_stable 0} }
	{ weights_load_3478 float 32 regular {ap_stable 0} }
	{ weights_load_3479 float 32 regular {ap_stable 0} }
	{ weights_load_3480 float 32 regular {ap_stable 0} }
	{ weights_load_3481 float 32 regular {ap_stable 0} }
	{ weights_load_3482 float 32 regular {ap_stable 0} }
	{ weights_load_3483 float 32 regular {ap_stable 0} }
	{ weights_load_3484 float 32 regular {ap_stable 0} }
	{ weights_load_3485 float 32 regular {ap_stable 0} }
	{ weights_load_3486 float 32 regular {ap_stable 0} }
	{ weights_load_3487 float 32 regular {ap_stable 0} }
	{ weights_load_3488 float 32 regular {ap_stable 0} }
	{ weights_load_3489 float 32 regular {ap_stable 0} }
	{ weights_load_3490 float 32 regular {ap_stable 0} }
	{ weights_load_3491 float 32 regular {ap_stable 0} }
	{ weights_load_3492 float 32 regular {ap_stable 0} }
	{ weights_load_3493 float 32 regular {ap_stable 0} }
	{ weights_load_3494 float 32 regular {ap_stable 0} }
	{ weights_load_3495 float 32 regular {ap_stable 0} }
	{ weights_load_3496 float 32 regular {ap_stable 0} }
	{ weights_load_3497 float 32 regular {ap_stable 0} }
	{ weights_load_3498 float 32 regular {ap_stable 0} }
	{ weights_load_3499 float 32 regular {ap_stable 0} }
	{ weights_load_3500 float 32 regular {ap_stable 0} }
	{ weights_load_3501 float 32 regular {ap_stable 0} }
	{ weights_load_3502 float 32 regular {ap_stable 0} }
	{ weights_load_3503 float 32 regular {ap_stable 0} }
	{ weights_load_3504 float 32 regular {ap_stable 0} }
	{ weights_load_3505 float 32 regular {ap_stable 0} }
	{ weights_load_3506 float 32 regular {ap_stable 0} }
	{ weights_load_3507 float 32 regular {ap_stable 0} }
	{ weights_load_3508 float 32 regular {ap_stable 0} }
	{ weights_load_3509 float 32 regular {ap_stable 0} }
	{ weights_load_3510 float 32 regular {ap_stable 0} }
	{ weights_load_3511 float 32 regular {ap_stable 0} }
	{ weights_load_3512 float 32 regular {ap_stable 0} }
	{ weights_load_3513 float 32 regular {ap_stable 0} }
	{ weights_load_3514 float 32 regular {ap_stable 0} }
	{ weights_load_3515 float 32 regular {ap_stable 0} }
	{ weights_load_3516 float 32 regular {ap_stable 0} }
	{ weights_load_3517 float 32 regular {ap_stable 0} }
	{ weights_load_3518 float 32 regular {ap_stable 0} }
	{ weights_load_3519 float 32 regular {ap_stable 0} }
	{ weights_load_3520 float 32 regular {ap_stable 0} }
	{ weights_load_3521 float 32 regular {ap_stable 0} }
	{ weights_load_3522 float 32 regular {ap_stable 0} }
	{ weights_load_3523 float 32 regular {ap_stable 0} }
	{ weights_load_3524 float 32 regular {ap_stable 0} }
	{ weights_load_3525 float 32 regular {ap_stable 0} }
	{ weights_load_3526 float 32 regular {ap_stable 0} }
	{ weights_load_3527 float 32 regular {ap_stable 0} }
	{ weights_load_3528 float 32 regular {ap_stable 0} }
	{ weights_load_3529 float 32 regular {ap_stable 0} }
	{ weights_load_3530 float 32 regular {ap_stable 0} }
	{ weights_load_3531 float 32 regular {ap_stable 0} }
	{ weights_load_3532 float 32 regular {ap_stable 0} }
	{ weights_load_3533 float 32 regular {ap_stable 0} }
	{ weights_load_3534 float 32 regular {ap_stable 0} }
	{ weights_load_3535 float 32 regular {ap_stable 0} }
	{ weights_load_3536 float 32 regular {ap_stable 0} }
	{ weights_load_3537 float 32 regular {ap_stable 0} }
	{ weights_load_3538 float 32 regular {ap_stable 0} }
	{ weights_load_3539 float 32 regular {ap_stable 0} }
	{ weights_load_3540 float 32 regular {ap_stable 0} }
	{ weights_load_3541 float 32 regular {ap_stable 0} }
	{ weights_load_3542 float 32 regular {ap_stable 0} }
	{ weights_load_3543 float 32 regular {ap_stable 0} }
	{ weights_load_3544 float 32 regular {ap_stable 0} }
	{ weights_load_3545 float 32 regular {ap_stable 0} }
	{ weights_load_3546 float 32 regular {ap_stable 0} }
	{ weights_load_3547 float 32 regular {ap_stable 0} }
	{ weights_load_3548 float 32 regular {ap_stable 0} }
	{ weights_load_3549 float 32 regular {ap_stable 0} }
	{ weights_load_3550 float 32 regular {ap_stable 0} }
	{ weights_load_3551 float 32 regular {ap_stable 0} }
	{ weights_load_3552 float 32 regular {ap_stable 0} }
	{ weights_load_3553 float 32 regular {ap_stable 0} }
	{ weights_load_3554 float 32 regular {ap_stable 0} }
	{ weights_load_3555 float 32 regular {ap_stable 0} }
	{ weights_load_3556 float 32 regular {ap_stable 0} }
	{ weights_load_3557 float 32 regular {ap_stable 0} }
	{ weights_load_3558 float 32 regular {ap_stable 0} }
	{ weights_load_3559 float 32 regular {ap_stable 0} }
	{ weights_load_3560 float 32 regular {ap_stable 0} }
	{ weights_load_3561 float 32 regular {ap_stable 0} }
	{ weights_load_3562 float 32 regular {ap_stable 0} }
	{ weights_load_3563 float 32 regular {ap_stable 0} }
	{ weights_load_3564 float 32 regular {ap_stable 0} }
	{ weights_load_3565 float 32 regular {ap_stable 0} }
	{ weights_load_3566 float 32 regular {ap_stable 0} }
	{ weights_load_3567 float 32 regular {ap_stable 0} }
	{ weights_load_3568 float 32 regular {ap_stable 0} }
	{ weights_load_3569 float 32 regular {ap_stable 0} }
	{ weights_load_3570 float 32 regular {ap_stable 0} }
	{ weights_load_3571 float 32 regular {ap_stable 0} }
	{ weights_load_3572 float 32 regular {ap_stable 0} }
	{ weights_load_3573 float 32 regular {ap_stable 0} }
	{ weights_load_3574 float 32 regular {ap_stable 0} }
	{ weights_load_3575 float 32 regular {ap_stable 0} }
	{ weights_load_3576 float 32 regular {ap_stable 0} }
	{ weights_load_3577 float 32 regular {ap_stable 0} }
	{ weights_load_3578 float 32 regular {ap_stable 0} }
	{ weights_load_3579 float 32 regular {ap_stable 0} }
	{ weights_load_3580 float 32 regular {ap_stable 0} }
	{ weights_load_3581 float 32 regular {ap_stable 0} }
	{ weights_load_3582 float 32 regular {ap_stable 0} }
	{ weights_load_3583 float 32 regular {ap_stable 0} }
	{ weights_load_3584 float 32 regular {ap_stable 0} }
	{ weights_load_3585 float 32 regular {ap_stable 0} }
	{ weights_load_3586 float 32 regular {ap_stable 0} }
	{ weights_load_3587 float 32 regular {ap_stable 0} }
	{ weights_load_3588 float 32 regular {ap_stable 0} }
	{ weights_load_3589 float 32 regular {ap_stable 0} }
	{ weights_load_3590 float 32 regular {ap_stable 0} }
	{ weights_load_3591 float 32 regular {ap_stable 0} }
	{ weights_load_3592 float 32 regular {ap_stable 0} }
	{ weights_load_3593 float 32 regular {ap_stable 0} }
	{ weights_load_3594 float 32 regular {ap_stable 0} }
	{ weights_load_3595 float 32 regular {ap_stable 0} }
	{ weights_load_3596 float 32 regular {ap_stable 0} }
	{ weights_load_3597 float 32 regular {ap_stable 0} }
	{ weights_load_3598 float 32 regular {ap_stable 0} }
	{ weights_load_3599 float 32 regular {ap_stable 0} }
	{ weights_load_3600 float 32 regular {ap_stable 0} }
	{ weights_load_3601 float 32 regular {ap_stable 0} }
	{ weights_load_3602 float 32 regular {ap_stable 0} }
	{ weights_load_3603 float 32 regular {ap_stable 0} }
	{ weights_load_3604 float 32 regular {ap_stable 0} }
	{ weights_load_3605 float 32 regular {ap_stable 0} }
	{ weights_load_3606 float 32 regular {ap_stable 0} }
	{ weights_load_3607 float 32 regular {ap_stable 0} }
	{ weights_load_3608 float 32 regular {ap_stable 0} }
	{ weights_load_3609 float 32 regular {ap_stable 0} }
	{ weights_load_3610 float 32 regular {ap_stable 0} }
	{ weights_load_3611 float 32 regular {ap_stable 0} }
	{ weights_load_3612 float 32 regular {ap_stable 0} }
	{ weights_load_3613 float 32 regular {ap_stable 0} }
	{ weights_load_3614 float 32 regular {ap_stable 0} }
	{ weights_load_3615 float 32 regular {ap_stable 0} }
	{ weights_load_3616 float 32 regular {ap_stable 0} }
	{ weights_load_3617 float 32 regular {ap_stable 0} }
	{ weights_load_3618 float 32 regular {ap_stable 0} }
	{ weights_load_3619 float 32 regular {ap_stable 0} }
	{ weights_load_3620 float 32 regular {ap_stable 0} }
	{ weights_load_3621 float 32 regular {ap_stable 0} }
	{ weights_load_3622 float 32 regular {ap_stable 0} }
	{ weights_load_3623 float 32 regular {ap_stable 0} }
	{ weights_load_3624 float 32 regular {ap_stable 0} }
	{ weights_load_3625 float 32 regular {ap_stable 0} }
	{ weights_load_3626 float 32 regular {ap_stable 0} }
	{ weights_load_3627 float 32 regular {ap_stable 0} }
	{ weights_load_3628 float 32 regular {ap_stable 0} }
	{ weights_load_3629 float 32 regular {ap_stable 0} }
	{ weights_load_3630 float 32 regular {ap_stable 0} }
	{ weights_load_3631 float 32 regular {ap_stable 0} }
	{ weights_load_3632 float 32 regular {ap_stable 0} }
	{ weights_load_3633 float 32 regular {ap_stable 0} }
	{ weights_load_3634 float 32 regular {ap_stable 0} }
	{ weights_load_3635 float 32 regular {ap_stable 0} }
	{ weights_load_3636 float 32 regular {ap_stable 0} }
	{ weights_load_3637 float 32 regular {ap_stable 0} }
	{ weights_load_3638 float 32 regular {ap_stable 0} }
	{ weights_load_3639 float 32 regular {ap_stable 0} }
	{ weights_load_3640 float 32 regular {ap_stable 0} }
	{ weights_load_3641 float 32 regular {ap_stable 0} }
	{ weights_load_3642 float 32 regular {ap_stable 0} }
	{ weights_load_3643 float 32 regular {ap_stable 0} }
	{ weights_load_3644 float 32 regular {ap_stable 0} }
	{ weights_load_3645 float 32 regular {ap_stable 0} }
	{ weights_load_3646 float 32 regular {ap_stable 0} }
	{ weights_load_3647 float 32 regular {ap_stable 0} }
	{ weights_load_3648 float 32 regular {ap_stable 0} }
	{ weights_load_3649 float 32 regular {ap_stable 0} }
	{ weights_load_3650 float 32 regular {ap_stable 0} }
	{ weights_load_3651 float 32 regular {ap_stable 0} }
	{ weights_load_3652 float 32 regular {ap_stable 0} }
	{ weights_load_3653 float 32 regular {ap_stable 0} }
	{ weights_load_3654 float 32 regular {ap_stable 0} }
	{ weights_load_3655 float 32 regular {ap_stable 0} }
	{ weights_load_3656 float 32 regular {ap_stable 0} }
	{ weights_load_3657 float 32 regular {ap_stable 0} }
	{ weights_load_3658 float 32 regular {ap_stable 0} }
	{ weights_load_3659 float 32 regular {ap_stable 0} }
	{ weights_load_3660 float 32 regular {ap_stable 0} }
	{ weights_load_3661 float 32 regular {ap_stable 0} }
	{ weights_load_3662 float 32 regular {ap_stable 0} }
	{ weights_load_3663 float 32 regular {ap_stable 0} }
	{ weights_load_3664 float 32 regular {ap_stable 0} }
	{ weights_load_3665 float 32 regular {ap_stable 0} }
	{ weights_load_3666 float 32 regular {ap_stable 0} }
	{ weights_load_3667 float 32 regular {ap_stable 0} }
	{ weights_load_3668 float 32 regular {ap_stable 0} }
	{ weights_load_3669 float 32 regular {ap_stable 0} }
	{ weights_load_3670 float 32 regular {ap_stable 0} }
	{ weights_load_3671 float 32 regular {ap_stable 0} }
	{ weights_load_3672 float 32 regular {ap_stable 0} }
	{ weights_load_3673 float 32 regular {ap_stable 0} }
	{ weights_load_3674 float 32 regular {ap_stable 0} }
	{ weights_load_3675 float 32 regular {ap_stable 0} }
	{ weights_load_3676 float 32 regular {ap_stable 0} }
	{ weights_load_3677 float 32 regular {ap_stable 0} }
	{ weights_load_3678 float 32 regular {ap_stable 0} }
	{ weights_load_3679 float 32 regular {ap_stable 0} }
	{ weights_load_3680 float 32 regular {ap_stable 0} }
	{ weights_load_3681 float 32 regular {ap_stable 0} }
	{ weights_load_3682 float 32 regular {ap_stable 0} }
	{ weights_load_3683 float 32 regular {ap_stable 0} }
	{ weights_load_3684 float 32 regular {ap_stable 0} }
	{ weights_load_3685 float 32 regular {ap_stable 0} }
	{ weights_load_3686 float 32 regular {ap_stable 0} }
	{ weights_load_3687 float 32 regular {ap_stable 0} }
	{ weights_load_3688 float 32 regular {ap_stable 0} }
	{ weights_load_3689 float 32 regular {ap_stable 0} }
	{ weights_load_3690 float 32 regular {ap_stable 0} }
	{ weights_load_3691 float 32 regular {ap_stable 0} }
	{ weights_load_3692 float 32 regular {ap_stable 0} }
	{ weights_load_3693 float 32 regular {ap_stable 0} }
	{ weights_load_3694 float 32 regular {ap_stable 0} }
	{ weights_load_3695 float 32 regular {ap_stable 0} }
	{ weights_load_3696 float 32 regular {ap_stable 0} }
	{ weights_load_3697 float 32 regular {ap_stable 0} }
	{ weights_load_3698 float 32 regular {ap_stable 0} }
	{ weights_load_3699 float 32 regular {ap_stable 0} }
	{ weights_load_3700 float 32 regular {ap_stable 0} }
	{ weights_load_3701 float 32 regular {ap_stable 0} }
	{ weights_load_3702 float 32 regular {ap_stable 0} }
	{ weights_load_3703 float 32 regular {ap_stable 0} }
	{ weights_load_3704 float 32 regular {ap_stable 0} }
	{ weights_load_3705 float 32 regular {ap_stable 0} }
	{ weights_load_3706 float 32 regular {ap_stable 0} }
	{ weights_load_3707 float 32 regular {ap_stable 0} }
	{ weights_load_3708 float 32 regular {ap_stable 0} }
	{ weights_load_3709 float 32 regular {ap_stable 0} }
	{ weights_load_3710 float 32 regular {ap_stable 0} }
	{ weights_load_3711 float 32 regular {ap_stable 0} }
	{ weights_load_3712 float 32 regular {ap_stable 0} }
	{ weights_load_3713 float 32 regular {ap_stable 0} }
	{ weights_load_3714 float 32 regular {ap_stable 0} }
	{ weights_load_3715 float 32 regular {ap_stable 0} }
	{ weights_load_3716 float 32 regular {ap_stable 0} }
	{ weights_load_3717 float 32 regular {ap_stable 0} }
	{ weights_load_3718 float 32 regular {ap_stable 0} }
	{ weights_load_3719 float 32 regular {ap_stable 0} }
	{ weights_load_3720 float 32 regular {ap_stable 0} }
	{ weights_load_3721 float 32 regular {ap_stable 0} }
	{ weights_load_3722 float 32 regular {ap_stable 0} }
	{ weights_load_3723 float 32 regular {ap_stable 0} }
	{ weights_load_3724 float 32 regular {ap_stable 0} }
	{ weights_load_3725 float 32 regular {ap_stable 0} }
	{ weights_load_3726 float 32 regular {ap_stable 0} }
	{ weights_load_3727 float 32 regular {ap_stable 0} }
	{ weights_load_3728 float 32 regular {ap_stable 0} }
	{ weights_load_3729 float 32 regular {ap_stable 0} }
	{ weights_load_3730 float 32 regular {ap_stable 0} }
	{ weights_load_3731 float 32 regular {ap_stable 0} }
	{ weights_load_3732 float 32 regular {ap_stable 0} }
	{ weights_load_3733 float 32 regular {ap_stable 0} }
	{ weights_load_3734 float 32 regular {ap_stable 0} }
	{ weights_load_3735 float 32 regular {ap_stable 0} }
	{ weights_load_3736 float 32 regular {ap_stable 0} }
	{ weights_load_3737 float 32 regular {ap_stable 0} }
	{ weights_load_3738 float 32 regular {ap_stable 0} }
	{ weights_load_3739 float 32 regular {ap_stable 0} }
	{ weights_load_3740 float 32 regular {ap_stable 0} }
	{ weights_load_3741 float 32 regular {ap_stable 0} }
	{ weights_load_3742 float 32 regular {ap_stable 0} }
	{ weights_load_3743 float 32 regular {ap_stable 0} }
	{ weights_load_3744 float 32 regular {ap_stable 0} }
	{ weights_load_3745 float 32 regular {ap_stable 0} }
	{ weights_load_3746 float 32 regular {ap_stable 0} }
	{ weights_load_3747 float 32 regular {ap_stable 0} }
	{ weights_load_3748 float 32 regular {ap_stable 0} }
	{ weights_load_3749 float 32 regular {ap_stable 0} }
	{ weights_load_3750 float 32 regular {ap_stable 0} }
	{ weights_load_3751 float 32 regular {ap_stable 0} }
	{ weights_load_3752 float 32 regular {ap_stable 0} }
	{ weights_load_3753 float 32 regular {ap_stable 0} }
	{ weights_load_3754 float 32 regular {ap_stable 0} }
	{ weights_load_3755 float 32 regular {ap_stable 0} }
	{ weights_load_3756 float 32 regular {ap_stable 0} }
	{ weights_load_3757 float 32 regular {ap_stable 0} }
	{ weights_load_3758 float 32 regular {ap_stable 0} }
	{ weights_load_3759 float 32 regular {ap_stable 0} }
	{ weights_load_3760 float 32 regular {ap_stable 0} }
	{ weights_load_3761 float 32 regular {ap_stable 0} }
	{ weights_load_3762 float 32 regular {ap_stable 0} }
	{ weights_load_3763 float 32 regular {ap_stable 0} }
	{ weights_load_3764 float 32 regular {ap_stable 0} }
	{ weights_load_3765 float 32 regular {ap_stable 0} }
	{ weights_load_3766 float 32 regular {ap_stable 0} }
	{ weights_load_3767 float 32 regular {ap_stable 0} }
	{ weights_load_3768 float 32 regular {ap_stable 0} }
	{ weights_load_3769 float 32 regular {ap_stable 0} }
	{ weights_load_3770 float 32 regular {ap_stable 0} }
	{ weights_load_3771 float 32 regular {ap_stable 0} }
	{ weights_load_3772 float 32 regular {ap_stable 0} }
	{ weights_load_3773 float 32 regular {ap_stable 0} }
	{ weights_load_3774 float 32 regular {ap_stable 0} }
	{ weights_load_3775 float 32 regular {ap_stable 0} }
	{ weights_load_3776 float 32 regular {ap_stable 0} }
	{ weights_load_3777 float 32 regular {ap_stable 0} }
	{ weights_load_3778 float 32 regular {ap_stable 0} }
	{ weights_load_3779 float 32 regular {ap_stable 0} }
	{ weights_load_3780 float 32 regular {ap_stable 0} }
	{ weights_load_3781 float 32 regular {ap_stable 0} }
	{ weights_load_3782 float 32 regular {ap_stable 0} }
	{ weights_load_3783 float 32 regular {ap_stable 0} }
	{ weights_load_3784 float 32 regular {ap_stable 0} }
	{ weights_load_3785 float 32 regular {ap_stable 0} }
	{ weights_load_3786 float 32 regular {ap_stable 0} }
	{ weights_load_3787 float 32 regular {ap_stable 0} }
	{ weights_load_3788 float 32 regular {ap_stable 0} }
	{ weights_load_3789 float 32 regular {ap_stable 0} }
	{ weights_load_3790 float 32 regular {ap_stable 0} }
	{ weights_load_3791 float 32 regular {ap_stable 0} }
	{ weights_load_3792 float 32 regular {ap_stable 0} }
	{ weights_load_3793 float 32 regular {ap_stable 0} }
	{ weights_load_3794 float 32 regular {ap_stable 0} }
	{ weights_load_3795 float 32 regular {ap_stable 0} }
	{ weights_load_3796 float 32 regular {ap_stable 0} }
	{ weights_load_3797 float 32 regular {ap_stable 0} }
	{ weights_load_3798 float 32 regular {ap_stable 0} }
	{ weights_load_3799 float 32 regular {ap_stable 0} }
	{ weights_load_3800 float 32 regular {ap_stable 0} }
	{ weights_load_3801 float 32 regular {ap_stable 0} }
	{ weights_load_3802 float 32 regular {ap_stable 0} }
	{ weights_load_3803 float 32 regular {ap_stable 0} }
	{ weights_load_3804 float 32 regular {ap_stable 0} }
	{ weights_load_3805 float 32 regular {ap_stable 0} }
	{ weights_load_3806 float 32 regular {ap_stable 0} }
	{ weights_load_3807 float 32 regular {ap_stable 0} }
	{ weights_load_3808 float 32 regular {ap_stable 0} }
	{ weights_load_3809 float 32 regular {ap_stable 0} }
	{ weights_load_3810 float 32 regular {ap_stable 0} }
	{ weights_load_3811 float 32 regular {ap_stable 0} }
	{ weights_load_3812 float 32 regular {ap_stable 0} }
	{ weights_load_3813 float 32 regular {ap_stable 0} }
	{ weights_load_3814 float 32 regular {ap_stable 0} }
	{ weights_load_3815 float 32 regular {ap_stable 0} }
	{ weights_load_3816 float 32 regular {ap_stable 0} }
	{ weights_load_3817 float 32 regular {ap_stable 0} }
	{ weights_load_3818 float 32 regular {ap_stable 0} }
	{ weights_load_3819 float 32 regular {ap_stable 0} }
	{ weights_load_3820 float 32 regular {ap_stable 0} }
	{ weights_load_3821 float 32 regular {ap_stable 0} }
	{ weights_load_3822 float 32 regular {ap_stable 0} }
	{ weights_load_3823 float 32 regular {ap_stable 0} }
	{ weights_load_3824 float 32 regular {ap_stable 0} }
	{ weights_load_3825 float 32 regular {ap_stable 0} }
	{ weights_load_3826 float 32 regular {ap_stable 0} }
	{ weights_load_3827 float 32 regular {ap_stable 0} }
	{ weights_load_3828 float 32 regular {ap_stable 0} }
	{ weights_load_3829 float 32 regular {ap_stable 0} }
	{ weights_load_3830 float 32 regular {ap_stable 0} }
	{ weights_load_3831 float 32 regular {ap_stable 0} }
	{ weights_load_3832 float 32 regular {ap_stable 0} }
	{ weights_load_3833 float 32 regular {ap_stable 0} }
	{ weights_load_3834 float 32 regular {ap_stable 0} }
	{ weights_load_3835 float 32 regular {ap_stable 0} }
	{ weights_load_3836 float 32 regular {ap_stable 0} }
	{ weights_load_3837 float 32 regular {ap_stable 0} }
	{ weights_load_3838 float 32 regular {ap_stable 0} }
	{ weights_load_3839 float 32 regular {ap_stable 0} }
	{ weights_load_3840 float 32 regular {ap_stable 0} }
	{ weights_load_3841 float 32 regular {ap_stable 0} }
	{ weights_load_3842 float 32 regular {ap_stable 0} }
	{ weights_load_3843 float 32 regular {ap_stable 0} }
	{ weights_load_3844 float 32 regular {ap_stable 0} }
	{ weights_load_3845 float 32 regular {ap_stable 0} }
	{ weights_load_3846 float 32 regular {ap_stable 0} }
	{ weights_load_3847 float 32 regular {ap_stable 0} }
	{ weights_load_3848 float 32 regular {ap_stable 0} }
	{ weights_load_3849 float 32 regular {ap_stable 0} }
	{ weights_load_3850 float 32 regular {ap_stable 0} }
	{ weights_load_3851 float 32 regular {ap_stable 0} }
	{ weights_load_3852 float 32 regular {ap_stable 0} }
	{ weights_load_3853 float 32 regular {ap_stable 0} }
	{ weights_load_3854 float 32 regular {ap_stable 0} }
	{ weights_load_3855 float 32 regular {ap_stable 0} }
	{ weights_load_3856 float 32 regular {ap_stable 0} }
	{ weights_load_3857 float 32 regular {ap_stable 0} }
	{ weights_load_3858 float 32 regular {ap_stable 0} }
	{ weights_load_3859 float 32 regular {ap_stable 0} }
	{ weights_load_3860 float 32 regular {ap_stable 0} }
	{ weights_load_3861 float 32 regular {ap_stable 0} }
	{ weights_load_3862 float 32 regular {ap_stable 0} }
	{ weights_load_3863 float 32 regular {ap_stable 0} }
	{ weights_load_3864 float 32 regular {ap_stable 0} }
	{ weights_load_3865 float 32 regular {ap_stable 0} }
	{ weights_load_3866 float 32 regular {ap_stable 0} }
	{ weights_load_3867 float 32 regular {ap_stable 0} }
	{ weights_load_3868 float 32 regular {ap_stable 0} }
	{ weights_load_3869 float 32 regular {ap_stable 0} }
	{ weights_load_3870 float 32 regular {ap_stable 0} }
	{ weights_load_3871 float 32 regular {ap_stable 0} }
	{ weights_load_3872 float 32 regular {ap_stable 0} }
	{ weights_load_3873 float 32 regular {ap_stable 0} }
	{ weights_load_3874 float 32 regular {ap_stable 0} }
	{ weights_load_3875 float 32 regular {ap_stable 0} }
	{ weights_load_3876 float 32 regular {ap_stable 0} }
	{ weights_load_3877 float 32 regular {ap_stable 0} }
	{ weights_load_3878 float 32 regular {ap_stable 0} }
	{ weights_load_3879 float 32 regular {ap_stable 0} }
	{ weights_load_3880 float 32 regular {ap_stable 0} }
	{ weights_load_3881 float 32 regular {ap_stable 0} }
	{ weights_load_3882 float 32 regular {ap_stable 0} }
	{ weights_load_3883 float 32 regular {ap_stable 0} }
	{ weights_load_3884 float 32 regular {ap_stable 0} }
	{ weights_load_3885 float 32 regular {ap_stable 0} }
	{ weights_load_3886 float 32 regular {ap_stable 0} }
	{ weights_load_3887 float 32 regular {ap_stable 0} }
	{ weights_load_3888 float 32 regular {ap_stable 0} }
	{ weights_load_3889 float 32 regular {ap_stable 0} }
	{ weights_load_3890 float 32 regular {ap_stable 0} }
	{ weights_load_3891 float 32 regular {ap_stable 0} }
	{ weights_load_3892 float 32 regular {ap_stable 0} }
	{ weights_load_3893 float 32 regular {ap_stable 0} }
	{ weights_load_3894 float 32 regular {ap_stable 0} }
	{ weights_load_3895 float 32 regular {ap_stable 0} }
	{ weights_load_3896 float 32 regular {ap_stable 0} }
	{ weights_load_3897 float 32 regular {ap_stable 0} }
	{ weights_load_3898 float 32 regular {ap_stable 0} }
	{ weights_load_3899 float 32 regular {ap_stable 0} }
	{ weights_load_3900 float 32 regular {ap_stable 0} }
	{ weights_load_3901 float 32 regular {ap_stable 0} }
	{ weights_load_3902 float 32 regular {ap_stable 0} }
	{ weights_load_3903 float 32 regular {ap_stable 0} }
	{ weights_load_3904 float 32 regular {ap_stable 0} }
	{ weights_load_3905 float 32 regular {ap_stable 0} }
	{ weights_load_3906 float 32 regular {ap_stable 0} }
	{ weights_load_3907 float 32 regular {ap_stable 0} }
	{ weights_load_3908 float 32 regular {ap_stable 0} }
	{ weights_load_3909 float 32 regular {ap_stable 0} }
	{ weights_load_3910 float 32 regular {ap_stable 0} }
	{ weights_load_3911 float 32 regular {ap_stable 0} }
	{ weights_load_3912 float 32 regular {ap_stable 0} }
	{ weights_load_3913 float 32 regular {ap_stable 0} }
	{ weights_load_3914 float 32 regular {ap_stable 0} }
	{ weights_load_3915 float 32 regular {ap_stable 0} }
	{ weights_load_3916 float 32 regular {ap_stable 0} }
	{ weights_load_3917 float 32 regular {ap_stable 0} }
	{ weights_load_3918 float 32 regular {ap_stable 0} }
	{ weights_load_3919 float 32 regular {ap_stable 0} }
	{ weights_load_3920 float 32 regular {ap_stable 0} }
	{ weights_load_3921 float 32 regular {ap_stable 0} }
	{ weights_load_3922 float 32 regular {ap_stable 0} }
	{ weights_load_3923 float 32 regular {ap_stable 0} }
	{ weights_load_3924 float 32 regular {ap_stable 0} }
	{ weights_load_3925 float 32 regular {ap_stable 0} }
	{ weights_load_3926 float 32 regular {ap_stable 0} }
	{ weights_load_3927 float 32 regular {ap_stable 0} }
	{ weights_load_3928 float 32 regular {ap_stable 0} }
	{ weights_load_3929 float 32 regular {ap_stable 0} }
	{ weights_load_3930 float 32 regular {ap_stable 0} }
	{ weights_load_3931 float 32 regular {ap_stable 0} }
	{ weights_load_3932 float 32 regular {ap_stable 0} }
	{ weights_load_3933 float 32 regular {ap_stable 0} }
	{ weights_load_3934 float 32 regular {ap_stable 0} }
	{ weights_load_3935 float 32 regular {ap_stable 0} }
	{ weights_load_3936 float 32 regular {ap_stable 0} }
	{ weights_load_3937 float 32 regular {ap_stable 0} }
	{ weights_load_3938 float 32 regular {ap_stable 0} }
	{ weights_load_3939 float 32 regular {ap_stable 0} }
	{ weights_load_3940 float 32 regular {ap_stable 0} }
	{ weights_load_3941 float 32 regular {ap_stable 0} }
	{ weights_load_3942 float 32 regular {ap_stable 0} }
	{ weights_load_3943 float 32 regular {ap_stable 0} }
	{ weights_load_3944 float 32 regular {ap_stable 0} }
	{ weights_load_3945 float 32 regular {ap_stable 0} }
	{ weights_load_3946 float 32 regular {ap_stable 0} }
	{ weights_load_3947 float 32 regular {ap_stable 0} }
	{ weights_load_3948 float 32 regular {ap_stable 0} }
	{ weights_load_3949 float 32 regular {ap_stable 0} }
	{ weights_load_3950 float 32 regular {ap_stable 0} }
	{ weights_load_3951 float 32 regular {ap_stable 0} }
	{ weights_load_3952 float 32 regular {ap_stable 0} }
	{ weights_load_3953 float 32 regular {ap_stable 0} }
	{ weights_load_3954 float 32 regular {ap_stable 0} }
	{ weights_load_3955 float 32 regular {ap_stable 0} }
	{ weights_load_3956 float 32 regular {ap_stable 0} }
	{ weights_load_3957 float 32 regular {ap_stable 0} }
	{ weights_load_3958 float 32 regular {ap_stable 0} }
	{ weights_load_3959 float 32 regular {ap_stable 0} }
	{ weights_load_3960 float 32 regular {ap_stable 0} }
	{ weights_load_3961 float 32 regular {ap_stable 0} }
	{ weights_load_3962 float 32 regular {ap_stable 0} }
	{ weights_load_3963 float 32 regular {ap_stable 0} }
	{ weights_load_3964 float 32 regular {ap_stable 0} }
	{ weights_load_3965 float 32 regular {ap_stable 0} }
	{ weights_load_3966 float 32 regular {ap_stable 0} }
	{ weights_load_3967 float 32 regular {ap_stable 0} }
	{ weights_load_3968 float 32 regular {ap_stable 0} }
	{ weights_load_3969 float 32 regular {ap_stable 0} }
	{ weights_load_3970 float 32 regular {ap_stable 0} }
	{ weights_load_3971 float 32 regular {ap_stable 0} }
	{ weights_load_3972 float 32 regular {ap_stable 0} }
	{ weights_load_3973 float 32 regular {ap_stable 0} }
	{ weights_load_3974 float 32 regular {ap_stable 0} }
	{ weights_load_3975 float 32 regular {ap_stable 0} }
	{ weights_load_3976 float 32 regular {ap_stable 0} }
	{ weights_load_3977 float 32 regular {ap_stable 0} }
	{ weights_load_3978 float 32 regular {ap_stable 0} }
	{ weights_load_3979 float 32 regular {ap_stable 0} }
	{ weights_load_3980 float 32 regular {ap_stable 0} }
	{ weights_load_3981 float 32 regular {ap_stable 0} }
	{ weights_load_3982 float 32 regular {ap_stable 0} }
	{ weights_load_3983 float 32 regular {ap_stable 0} }
	{ weights_load_3984 float 32 regular {ap_stable 0} }
	{ weights_load_3985 float 32 regular {ap_stable 0} }
	{ weights_load_3986 float 32 regular {ap_stable 0} }
	{ weights_load_3987 float 32 regular {ap_stable 0} }
	{ weights_load_3988 float 32 regular {ap_stable 0} }
	{ weights_load_3989 float 32 regular {ap_stable 0} }
	{ weights_load_3990 float 32 regular {ap_stable 0} }
	{ weights_load_3991 float 32 regular {ap_stable 0} }
	{ weights_load_3992 float 32 regular {ap_stable 0} }
	{ weights_load_3993 float 32 regular {ap_stable 0} }
	{ weights_load_3994 float 32 regular {ap_stable 0} }
	{ weights_load_3995 float 32 regular {ap_stable 0} }
	{ weights_load_3996 float 32 regular {ap_stable 0} }
	{ weights_load_3997 float 32 regular {ap_stable 0} }
	{ weights_load_3998 float 32 regular {ap_stable 0} }
	{ weights_load_3999 float 32 regular {ap_stable 0} }
	{ weights_load_4000 float 32 regular {ap_stable 0} }
	{ weights_load_4001 float 32 regular {ap_stable 0} }
	{ weights_load_4002 float 32 regular {ap_stable 0} }
	{ weights_load_4003 float 32 regular {ap_stable 0} }
	{ weights_load_4004 float 32 regular {ap_stable 0} }
	{ weights_load_4005 float 32 regular {ap_stable 0} }
	{ weights_load_4006 float 32 regular {ap_stable 0} }
	{ weights_load_4007 float 32 regular {ap_stable 0} }
	{ weights_load_4008 float 32 regular {ap_stable 0} }
	{ weights_load_4009 float 32 regular {ap_stable 0} }
	{ weights_load_4010 float 32 regular {ap_stable 0} }
	{ weights_load_4011 float 32 regular {ap_stable 0} }
	{ weights_load_4012 float 32 regular {ap_stable 0} }
	{ weights_load_4013 float 32 regular {ap_stable 0} }
	{ weights_load_4014 float 32 regular {ap_stable 0} }
	{ weights_load_4015 float 32 regular {ap_stable 0} }
	{ weights_load_4016 float 32 regular {ap_stable 0} }
	{ weights_load_4017 float 32 regular {ap_stable 0} }
	{ weights_load_4018 float 32 regular {ap_stable 0} }
	{ weights_load_4019 float 32 regular {ap_stable 0} }
	{ weights_load_4020 float 32 regular {ap_stable 0} }
	{ weights_load_4021 float 32 regular {ap_stable 0} }
	{ weights_load_4022 float 32 regular {ap_stable 0} }
	{ weights_load_4023 float 32 regular {ap_stable 0} }
	{ weights_load_4024 float 32 regular {ap_stable 0} }
	{ weights_load_4025 float 32 regular {ap_stable 0} }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_31", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3451", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3452", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3453", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3454", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3455", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3456", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3457", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3458", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_31", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_load_3459", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3460", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3461", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3462", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3463", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3464", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3465", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3466", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3467", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3468", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3469", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3470", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3471", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3472", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3473", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3474", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3475", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3476", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3477", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3478", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3479", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3480", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3481", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3482", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3483", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3484", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3485", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3486", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3487", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3488", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3489", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3490", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3491", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3492", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3493", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3494", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3495", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3496", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3497", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3498", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3499", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3500", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3501", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3502", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3503", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3504", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3505", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3506", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3507", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3508", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3509", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3510", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3511", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3512", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3513", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3514", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3515", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3516", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3517", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3518", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3519", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3520", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3521", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3522", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3523", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3524", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3525", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3526", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3527", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3528", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3529", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3530", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3531", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3532", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3533", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3534", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3535", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3536", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3537", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3538", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3539", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3540", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3541", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3542", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3543", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3544", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3545", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3546", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3547", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3548", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3549", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3550", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3551", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3552", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3553", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3554", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3555", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3556", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3557", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3558", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3559", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3560", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3561", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3562", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3563", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3564", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3565", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3566", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3567", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3568", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3569", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3570", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3571", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3572", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3573", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3574", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3575", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3576", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3577", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3578", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3579", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3580", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3581", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3582", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3583", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3584", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3585", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3586", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3587", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3588", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3589", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3590", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3591", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3592", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3593", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3594", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3595", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3596", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3597", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3598", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3599", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3600", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3601", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3602", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3603", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3604", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3605", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3606", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3607", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3608", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3609", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3610", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3611", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3612", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3613", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3614", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3615", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3616", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3617", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3618", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3619", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3620", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3621", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3622", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3623", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3624", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3625", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3626", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3627", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3628", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3629", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3630", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3631", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3632", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3633", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3634", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3635", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3636", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3637", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3638", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3639", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3640", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3641", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3642", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3643", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3644", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3645", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3646", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3647", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3648", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3649", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3650", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3651", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3652", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3653", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3654", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3655", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3656", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3657", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3658", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3659", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3660", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3661", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3662", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3663", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3664", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3665", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3666", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3667", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3668", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3669", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3670", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3671", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3672", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3673", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3674", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3675", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3676", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3677", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3678", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3679", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3680", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3681", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3682", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3683", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3684", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3685", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3686", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3687", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3688", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3689", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3690", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3691", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3692", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3693", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3694", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3695", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3696", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3697", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3698", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3699", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3700", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3701", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3702", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3703", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3704", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3705", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3706", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3707", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3708", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3709", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3710", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3711", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3712", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3713", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3714", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3715", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3716", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3717", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3718", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3719", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3720", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3721", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3722", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3723", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3724", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3725", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3726", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3727", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3728", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3729", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3730", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3731", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3732", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3733", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3734", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3735", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3736", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3737", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3738", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3739", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3740", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3741", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3742", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3743", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3744", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3745", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3746", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3747", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3748", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3749", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3750", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3751", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3752", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3753", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3754", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3755", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3756", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3757", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3758", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3759", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3760", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3761", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3762", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3763", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3764", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3765", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3766", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3767", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3768", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3769", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3770", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3771", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3772", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3773", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3774", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3775", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3776", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3777", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3778", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3779", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3780", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3781", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3782", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3783", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3784", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3785", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3786", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3787", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3788", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3789", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3790", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3791", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3792", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3793", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3794", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3795", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3796", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3797", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3798", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3799", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3800", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3801", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3802", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3803", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3804", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3805", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3806", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3807", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3808", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3809", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3810", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3811", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3812", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3813", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3814", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3815", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3816", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3817", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3818", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3819", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3820", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3821", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3822", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3823", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3824", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3825", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3826", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3827", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3828", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3829", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3830", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3831", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3832", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3833", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3834", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3835", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3836", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3837", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3838", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3839", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3840", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3841", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3842", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3843", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3844", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3845", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3846", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3847", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3848", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3849", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3850", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3851", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3852", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3853", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3854", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3855", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3856", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3857", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3858", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3859", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3860", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3861", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3862", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3863", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3864", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3865", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3866", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3867", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3868", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3869", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3870", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3871", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3872", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3873", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3874", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3875", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3876", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3877", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3878", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3879", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3880", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3881", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3882", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3883", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3884", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3885", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3886", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3887", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3888", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3889", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3890", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3891", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3892", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3893", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3894", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3895", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3896", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3897", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3898", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3899", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3900", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3901", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3902", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3903", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3904", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3905", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3906", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3907", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3908", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3909", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3910", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3911", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3912", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3913", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3914", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3915", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3916", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3917", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3918", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3919", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3920", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3921", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3922", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3923", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3924", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3925", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3926", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3927", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3928", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3929", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3930", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3931", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3932", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3933", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3934", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3935", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3936", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3937", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3938", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3939", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3940", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3941", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3942", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3943", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3944", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3945", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3946", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3947", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3948", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3949", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3950", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3951", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3952", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3953", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3954", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3955", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3956", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3957", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3958", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3959", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3960", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3961", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3962", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3963", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3964", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3965", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3966", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3967", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3968", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3969", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3970", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3971", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3972", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3973", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3974", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3975", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3976", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3977", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3978", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3979", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3980", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3981", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3982", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3983", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3984", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3985", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3986", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3987", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3988", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3989", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3990", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3991", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3992", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3993", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3994", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3995", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3996", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3997", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3998", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_3999", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4000", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4001", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4002", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4003", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4004", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4005", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4006", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4007", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4008", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4009", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4010", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4011", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4012", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4013", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4014", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4015", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4016", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4017", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4018", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4019", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4020", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4021", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4022", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4023", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4024", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_load_4025", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 592
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_channel_map_stream_31_din sc_out sc_lv 32 signal 10 } 
	{ in_channel_map_stream_31_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ in_channel_map_stream_31_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ in_channel_map_stream_31_full_n sc_in sc_logic 1 signal 10 } 
	{ in_channel_map_stream_31_write sc_out sc_logic 1 signal 10 } 
	{ conv2d_64_padded_window_stream_31_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_31_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_31_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_31_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_31_read sc_out sc_logic 1 signal 0 } 
	{ weights_load sc_in sc_lv 32 signal 1 } 
	{ weights_load_3451 sc_in sc_lv 32 signal 2 } 
	{ weights_load_3452 sc_in sc_lv 32 signal 3 } 
	{ weights_load_3453 sc_in sc_lv 32 signal 4 } 
	{ weights_load_3454 sc_in sc_lv 32 signal 5 } 
	{ weights_load_3455 sc_in sc_lv 32 signal 6 } 
	{ weights_load_3456 sc_in sc_lv 32 signal 7 } 
	{ weights_load_3457 sc_in sc_lv 32 signal 8 } 
	{ weights_load_3458 sc_in sc_lv 32 signal 9 } 
	{ weights_load_3459 sc_in sc_lv 32 signal 11 } 
	{ weights_load_3460 sc_in sc_lv 32 signal 12 } 
	{ weights_load_3461 sc_in sc_lv 32 signal 13 } 
	{ weights_load_3462 sc_in sc_lv 32 signal 14 } 
	{ weights_load_3463 sc_in sc_lv 32 signal 15 } 
	{ weights_load_3464 sc_in sc_lv 32 signal 16 } 
	{ weights_load_3465 sc_in sc_lv 32 signal 17 } 
	{ weights_load_3466 sc_in sc_lv 32 signal 18 } 
	{ weights_load_3467 sc_in sc_lv 32 signal 19 } 
	{ weights_load_3468 sc_in sc_lv 32 signal 20 } 
	{ weights_load_3469 sc_in sc_lv 32 signal 21 } 
	{ weights_load_3470 sc_in sc_lv 32 signal 22 } 
	{ weights_load_3471 sc_in sc_lv 32 signal 23 } 
	{ weights_load_3472 sc_in sc_lv 32 signal 24 } 
	{ weights_load_3473 sc_in sc_lv 32 signal 25 } 
	{ weights_load_3474 sc_in sc_lv 32 signal 26 } 
	{ weights_load_3475 sc_in sc_lv 32 signal 27 } 
	{ weights_load_3476 sc_in sc_lv 32 signal 28 } 
	{ weights_load_3477 sc_in sc_lv 32 signal 29 } 
	{ weights_load_3478 sc_in sc_lv 32 signal 30 } 
	{ weights_load_3479 sc_in sc_lv 32 signal 31 } 
	{ weights_load_3480 sc_in sc_lv 32 signal 32 } 
	{ weights_load_3481 sc_in sc_lv 32 signal 33 } 
	{ weights_load_3482 sc_in sc_lv 32 signal 34 } 
	{ weights_load_3483 sc_in sc_lv 32 signal 35 } 
	{ weights_load_3484 sc_in sc_lv 32 signal 36 } 
	{ weights_load_3485 sc_in sc_lv 32 signal 37 } 
	{ weights_load_3486 sc_in sc_lv 32 signal 38 } 
	{ weights_load_3487 sc_in sc_lv 32 signal 39 } 
	{ weights_load_3488 sc_in sc_lv 32 signal 40 } 
	{ weights_load_3489 sc_in sc_lv 32 signal 41 } 
	{ weights_load_3490 sc_in sc_lv 32 signal 42 } 
	{ weights_load_3491 sc_in sc_lv 32 signal 43 } 
	{ weights_load_3492 sc_in sc_lv 32 signal 44 } 
	{ weights_load_3493 sc_in sc_lv 32 signal 45 } 
	{ weights_load_3494 sc_in sc_lv 32 signal 46 } 
	{ weights_load_3495 sc_in sc_lv 32 signal 47 } 
	{ weights_load_3496 sc_in sc_lv 32 signal 48 } 
	{ weights_load_3497 sc_in sc_lv 32 signal 49 } 
	{ weights_load_3498 sc_in sc_lv 32 signal 50 } 
	{ weights_load_3499 sc_in sc_lv 32 signal 51 } 
	{ weights_load_3500 sc_in sc_lv 32 signal 52 } 
	{ weights_load_3501 sc_in sc_lv 32 signal 53 } 
	{ weights_load_3502 sc_in sc_lv 32 signal 54 } 
	{ weights_load_3503 sc_in sc_lv 32 signal 55 } 
	{ weights_load_3504 sc_in sc_lv 32 signal 56 } 
	{ weights_load_3505 sc_in sc_lv 32 signal 57 } 
	{ weights_load_3506 sc_in sc_lv 32 signal 58 } 
	{ weights_load_3507 sc_in sc_lv 32 signal 59 } 
	{ weights_load_3508 sc_in sc_lv 32 signal 60 } 
	{ weights_load_3509 sc_in sc_lv 32 signal 61 } 
	{ weights_load_3510 sc_in sc_lv 32 signal 62 } 
	{ weights_load_3511 sc_in sc_lv 32 signal 63 } 
	{ weights_load_3512 sc_in sc_lv 32 signal 64 } 
	{ weights_load_3513 sc_in sc_lv 32 signal 65 } 
	{ weights_load_3514 sc_in sc_lv 32 signal 66 } 
	{ weights_load_3515 sc_in sc_lv 32 signal 67 } 
	{ weights_load_3516 sc_in sc_lv 32 signal 68 } 
	{ weights_load_3517 sc_in sc_lv 32 signal 69 } 
	{ weights_load_3518 sc_in sc_lv 32 signal 70 } 
	{ weights_load_3519 sc_in sc_lv 32 signal 71 } 
	{ weights_load_3520 sc_in sc_lv 32 signal 72 } 
	{ weights_load_3521 sc_in sc_lv 32 signal 73 } 
	{ weights_load_3522 sc_in sc_lv 32 signal 74 } 
	{ weights_load_3523 sc_in sc_lv 32 signal 75 } 
	{ weights_load_3524 sc_in sc_lv 32 signal 76 } 
	{ weights_load_3525 sc_in sc_lv 32 signal 77 } 
	{ weights_load_3526 sc_in sc_lv 32 signal 78 } 
	{ weights_load_3527 sc_in sc_lv 32 signal 79 } 
	{ weights_load_3528 sc_in sc_lv 32 signal 80 } 
	{ weights_load_3529 sc_in sc_lv 32 signal 81 } 
	{ weights_load_3530 sc_in sc_lv 32 signal 82 } 
	{ weights_load_3531 sc_in sc_lv 32 signal 83 } 
	{ weights_load_3532 sc_in sc_lv 32 signal 84 } 
	{ weights_load_3533 sc_in sc_lv 32 signal 85 } 
	{ weights_load_3534 sc_in sc_lv 32 signal 86 } 
	{ weights_load_3535 sc_in sc_lv 32 signal 87 } 
	{ weights_load_3536 sc_in sc_lv 32 signal 88 } 
	{ weights_load_3537 sc_in sc_lv 32 signal 89 } 
	{ weights_load_3538 sc_in sc_lv 32 signal 90 } 
	{ weights_load_3539 sc_in sc_lv 32 signal 91 } 
	{ weights_load_3540 sc_in sc_lv 32 signal 92 } 
	{ weights_load_3541 sc_in sc_lv 32 signal 93 } 
	{ weights_load_3542 sc_in sc_lv 32 signal 94 } 
	{ weights_load_3543 sc_in sc_lv 32 signal 95 } 
	{ weights_load_3544 sc_in sc_lv 32 signal 96 } 
	{ weights_load_3545 sc_in sc_lv 32 signal 97 } 
	{ weights_load_3546 sc_in sc_lv 32 signal 98 } 
	{ weights_load_3547 sc_in sc_lv 32 signal 99 } 
	{ weights_load_3548 sc_in sc_lv 32 signal 100 } 
	{ weights_load_3549 sc_in sc_lv 32 signal 101 } 
	{ weights_load_3550 sc_in sc_lv 32 signal 102 } 
	{ weights_load_3551 sc_in sc_lv 32 signal 103 } 
	{ weights_load_3552 sc_in sc_lv 32 signal 104 } 
	{ weights_load_3553 sc_in sc_lv 32 signal 105 } 
	{ weights_load_3554 sc_in sc_lv 32 signal 106 } 
	{ weights_load_3555 sc_in sc_lv 32 signal 107 } 
	{ weights_load_3556 sc_in sc_lv 32 signal 108 } 
	{ weights_load_3557 sc_in sc_lv 32 signal 109 } 
	{ weights_load_3558 sc_in sc_lv 32 signal 110 } 
	{ weights_load_3559 sc_in sc_lv 32 signal 111 } 
	{ weights_load_3560 sc_in sc_lv 32 signal 112 } 
	{ weights_load_3561 sc_in sc_lv 32 signal 113 } 
	{ weights_load_3562 sc_in sc_lv 32 signal 114 } 
	{ weights_load_3563 sc_in sc_lv 32 signal 115 } 
	{ weights_load_3564 sc_in sc_lv 32 signal 116 } 
	{ weights_load_3565 sc_in sc_lv 32 signal 117 } 
	{ weights_load_3566 sc_in sc_lv 32 signal 118 } 
	{ weights_load_3567 sc_in sc_lv 32 signal 119 } 
	{ weights_load_3568 sc_in sc_lv 32 signal 120 } 
	{ weights_load_3569 sc_in sc_lv 32 signal 121 } 
	{ weights_load_3570 sc_in sc_lv 32 signal 122 } 
	{ weights_load_3571 sc_in sc_lv 32 signal 123 } 
	{ weights_load_3572 sc_in sc_lv 32 signal 124 } 
	{ weights_load_3573 sc_in sc_lv 32 signal 125 } 
	{ weights_load_3574 sc_in sc_lv 32 signal 126 } 
	{ weights_load_3575 sc_in sc_lv 32 signal 127 } 
	{ weights_load_3576 sc_in sc_lv 32 signal 128 } 
	{ weights_load_3577 sc_in sc_lv 32 signal 129 } 
	{ weights_load_3578 sc_in sc_lv 32 signal 130 } 
	{ weights_load_3579 sc_in sc_lv 32 signal 131 } 
	{ weights_load_3580 sc_in sc_lv 32 signal 132 } 
	{ weights_load_3581 sc_in sc_lv 32 signal 133 } 
	{ weights_load_3582 sc_in sc_lv 32 signal 134 } 
	{ weights_load_3583 sc_in sc_lv 32 signal 135 } 
	{ weights_load_3584 sc_in sc_lv 32 signal 136 } 
	{ weights_load_3585 sc_in sc_lv 32 signal 137 } 
	{ weights_load_3586 sc_in sc_lv 32 signal 138 } 
	{ weights_load_3587 sc_in sc_lv 32 signal 139 } 
	{ weights_load_3588 sc_in sc_lv 32 signal 140 } 
	{ weights_load_3589 sc_in sc_lv 32 signal 141 } 
	{ weights_load_3590 sc_in sc_lv 32 signal 142 } 
	{ weights_load_3591 sc_in sc_lv 32 signal 143 } 
	{ weights_load_3592 sc_in sc_lv 32 signal 144 } 
	{ weights_load_3593 sc_in sc_lv 32 signal 145 } 
	{ weights_load_3594 sc_in sc_lv 32 signal 146 } 
	{ weights_load_3595 sc_in sc_lv 32 signal 147 } 
	{ weights_load_3596 sc_in sc_lv 32 signal 148 } 
	{ weights_load_3597 sc_in sc_lv 32 signal 149 } 
	{ weights_load_3598 sc_in sc_lv 32 signal 150 } 
	{ weights_load_3599 sc_in sc_lv 32 signal 151 } 
	{ weights_load_3600 sc_in sc_lv 32 signal 152 } 
	{ weights_load_3601 sc_in sc_lv 32 signal 153 } 
	{ weights_load_3602 sc_in sc_lv 32 signal 154 } 
	{ weights_load_3603 sc_in sc_lv 32 signal 155 } 
	{ weights_load_3604 sc_in sc_lv 32 signal 156 } 
	{ weights_load_3605 sc_in sc_lv 32 signal 157 } 
	{ weights_load_3606 sc_in sc_lv 32 signal 158 } 
	{ weights_load_3607 sc_in sc_lv 32 signal 159 } 
	{ weights_load_3608 sc_in sc_lv 32 signal 160 } 
	{ weights_load_3609 sc_in sc_lv 32 signal 161 } 
	{ weights_load_3610 sc_in sc_lv 32 signal 162 } 
	{ weights_load_3611 sc_in sc_lv 32 signal 163 } 
	{ weights_load_3612 sc_in sc_lv 32 signal 164 } 
	{ weights_load_3613 sc_in sc_lv 32 signal 165 } 
	{ weights_load_3614 sc_in sc_lv 32 signal 166 } 
	{ weights_load_3615 sc_in sc_lv 32 signal 167 } 
	{ weights_load_3616 sc_in sc_lv 32 signal 168 } 
	{ weights_load_3617 sc_in sc_lv 32 signal 169 } 
	{ weights_load_3618 sc_in sc_lv 32 signal 170 } 
	{ weights_load_3619 sc_in sc_lv 32 signal 171 } 
	{ weights_load_3620 sc_in sc_lv 32 signal 172 } 
	{ weights_load_3621 sc_in sc_lv 32 signal 173 } 
	{ weights_load_3622 sc_in sc_lv 32 signal 174 } 
	{ weights_load_3623 sc_in sc_lv 32 signal 175 } 
	{ weights_load_3624 sc_in sc_lv 32 signal 176 } 
	{ weights_load_3625 sc_in sc_lv 32 signal 177 } 
	{ weights_load_3626 sc_in sc_lv 32 signal 178 } 
	{ weights_load_3627 sc_in sc_lv 32 signal 179 } 
	{ weights_load_3628 sc_in sc_lv 32 signal 180 } 
	{ weights_load_3629 sc_in sc_lv 32 signal 181 } 
	{ weights_load_3630 sc_in sc_lv 32 signal 182 } 
	{ weights_load_3631 sc_in sc_lv 32 signal 183 } 
	{ weights_load_3632 sc_in sc_lv 32 signal 184 } 
	{ weights_load_3633 sc_in sc_lv 32 signal 185 } 
	{ weights_load_3634 sc_in sc_lv 32 signal 186 } 
	{ weights_load_3635 sc_in sc_lv 32 signal 187 } 
	{ weights_load_3636 sc_in sc_lv 32 signal 188 } 
	{ weights_load_3637 sc_in sc_lv 32 signal 189 } 
	{ weights_load_3638 sc_in sc_lv 32 signal 190 } 
	{ weights_load_3639 sc_in sc_lv 32 signal 191 } 
	{ weights_load_3640 sc_in sc_lv 32 signal 192 } 
	{ weights_load_3641 sc_in sc_lv 32 signal 193 } 
	{ weights_load_3642 sc_in sc_lv 32 signal 194 } 
	{ weights_load_3643 sc_in sc_lv 32 signal 195 } 
	{ weights_load_3644 sc_in sc_lv 32 signal 196 } 
	{ weights_load_3645 sc_in sc_lv 32 signal 197 } 
	{ weights_load_3646 sc_in sc_lv 32 signal 198 } 
	{ weights_load_3647 sc_in sc_lv 32 signal 199 } 
	{ weights_load_3648 sc_in sc_lv 32 signal 200 } 
	{ weights_load_3649 sc_in sc_lv 32 signal 201 } 
	{ weights_load_3650 sc_in sc_lv 32 signal 202 } 
	{ weights_load_3651 sc_in sc_lv 32 signal 203 } 
	{ weights_load_3652 sc_in sc_lv 32 signal 204 } 
	{ weights_load_3653 sc_in sc_lv 32 signal 205 } 
	{ weights_load_3654 sc_in sc_lv 32 signal 206 } 
	{ weights_load_3655 sc_in sc_lv 32 signal 207 } 
	{ weights_load_3656 sc_in sc_lv 32 signal 208 } 
	{ weights_load_3657 sc_in sc_lv 32 signal 209 } 
	{ weights_load_3658 sc_in sc_lv 32 signal 210 } 
	{ weights_load_3659 sc_in sc_lv 32 signal 211 } 
	{ weights_load_3660 sc_in sc_lv 32 signal 212 } 
	{ weights_load_3661 sc_in sc_lv 32 signal 213 } 
	{ weights_load_3662 sc_in sc_lv 32 signal 214 } 
	{ weights_load_3663 sc_in sc_lv 32 signal 215 } 
	{ weights_load_3664 sc_in sc_lv 32 signal 216 } 
	{ weights_load_3665 sc_in sc_lv 32 signal 217 } 
	{ weights_load_3666 sc_in sc_lv 32 signal 218 } 
	{ weights_load_3667 sc_in sc_lv 32 signal 219 } 
	{ weights_load_3668 sc_in sc_lv 32 signal 220 } 
	{ weights_load_3669 sc_in sc_lv 32 signal 221 } 
	{ weights_load_3670 sc_in sc_lv 32 signal 222 } 
	{ weights_load_3671 sc_in sc_lv 32 signal 223 } 
	{ weights_load_3672 sc_in sc_lv 32 signal 224 } 
	{ weights_load_3673 sc_in sc_lv 32 signal 225 } 
	{ weights_load_3674 sc_in sc_lv 32 signal 226 } 
	{ weights_load_3675 sc_in sc_lv 32 signal 227 } 
	{ weights_load_3676 sc_in sc_lv 32 signal 228 } 
	{ weights_load_3677 sc_in sc_lv 32 signal 229 } 
	{ weights_load_3678 sc_in sc_lv 32 signal 230 } 
	{ weights_load_3679 sc_in sc_lv 32 signal 231 } 
	{ weights_load_3680 sc_in sc_lv 32 signal 232 } 
	{ weights_load_3681 sc_in sc_lv 32 signal 233 } 
	{ weights_load_3682 sc_in sc_lv 32 signal 234 } 
	{ weights_load_3683 sc_in sc_lv 32 signal 235 } 
	{ weights_load_3684 sc_in sc_lv 32 signal 236 } 
	{ weights_load_3685 sc_in sc_lv 32 signal 237 } 
	{ weights_load_3686 sc_in sc_lv 32 signal 238 } 
	{ weights_load_3687 sc_in sc_lv 32 signal 239 } 
	{ weights_load_3688 sc_in sc_lv 32 signal 240 } 
	{ weights_load_3689 sc_in sc_lv 32 signal 241 } 
	{ weights_load_3690 sc_in sc_lv 32 signal 242 } 
	{ weights_load_3691 sc_in sc_lv 32 signal 243 } 
	{ weights_load_3692 sc_in sc_lv 32 signal 244 } 
	{ weights_load_3693 sc_in sc_lv 32 signal 245 } 
	{ weights_load_3694 sc_in sc_lv 32 signal 246 } 
	{ weights_load_3695 sc_in sc_lv 32 signal 247 } 
	{ weights_load_3696 sc_in sc_lv 32 signal 248 } 
	{ weights_load_3697 sc_in sc_lv 32 signal 249 } 
	{ weights_load_3698 sc_in sc_lv 32 signal 250 } 
	{ weights_load_3699 sc_in sc_lv 32 signal 251 } 
	{ weights_load_3700 sc_in sc_lv 32 signal 252 } 
	{ weights_load_3701 sc_in sc_lv 32 signal 253 } 
	{ weights_load_3702 sc_in sc_lv 32 signal 254 } 
	{ weights_load_3703 sc_in sc_lv 32 signal 255 } 
	{ weights_load_3704 sc_in sc_lv 32 signal 256 } 
	{ weights_load_3705 sc_in sc_lv 32 signal 257 } 
	{ weights_load_3706 sc_in sc_lv 32 signal 258 } 
	{ weights_load_3707 sc_in sc_lv 32 signal 259 } 
	{ weights_load_3708 sc_in sc_lv 32 signal 260 } 
	{ weights_load_3709 sc_in sc_lv 32 signal 261 } 
	{ weights_load_3710 sc_in sc_lv 32 signal 262 } 
	{ weights_load_3711 sc_in sc_lv 32 signal 263 } 
	{ weights_load_3712 sc_in sc_lv 32 signal 264 } 
	{ weights_load_3713 sc_in sc_lv 32 signal 265 } 
	{ weights_load_3714 sc_in sc_lv 32 signal 266 } 
	{ weights_load_3715 sc_in sc_lv 32 signal 267 } 
	{ weights_load_3716 sc_in sc_lv 32 signal 268 } 
	{ weights_load_3717 sc_in sc_lv 32 signal 269 } 
	{ weights_load_3718 sc_in sc_lv 32 signal 270 } 
	{ weights_load_3719 sc_in sc_lv 32 signal 271 } 
	{ weights_load_3720 sc_in sc_lv 32 signal 272 } 
	{ weights_load_3721 sc_in sc_lv 32 signal 273 } 
	{ weights_load_3722 sc_in sc_lv 32 signal 274 } 
	{ weights_load_3723 sc_in sc_lv 32 signal 275 } 
	{ weights_load_3724 sc_in sc_lv 32 signal 276 } 
	{ weights_load_3725 sc_in sc_lv 32 signal 277 } 
	{ weights_load_3726 sc_in sc_lv 32 signal 278 } 
	{ weights_load_3727 sc_in sc_lv 32 signal 279 } 
	{ weights_load_3728 sc_in sc_lv 32 signal 280 } 
	{ weights_load_3729 sc_in sc_lv 32 signal 281 } 
	{ weights_load_3730 sc_in sc_lv 32 signal 282 } 
	{ weights_load_3731 sc_in sc_lv 32 signal 283 } 
	{ weights_load_3732 sc_in sc_lv 32 signal 284 } 
	{ weights_load_3733 sc_in sc_lv 32 signal 285 } 
	{ weights_load_3734 sc_in sc_lv 32 signal 286 } 
	{ weights_load_3735 sc_in sc_lv 32 signal 287 } 
	{ weights_load_3736 sc_in sc_lv 32 signal 288 } 
	{ weights_load_3737 sc_in sc_lv 32 signal 289 } 
	{ weights_load_3738 sc_in sc_lv 32 signal 290 } 
	{ weights_load_3739 sc_in sc_lv 32 signal 291 } 
	{ weights_load_3740 sc_in sc_lv 32 signal 292 } 
	{ weights_load_3741 sc_in sc_lv 32 signal 293 } 
	{ weights_load_3742 sc_in sc_lv 32 signal 294 } 
	{ weights_load_3743 sc_in sc_lv 32 signal 295 } 
	{ weights_load_3744 sc_in sc_lv 32 signal 296 } 
	{ weights_load_3745 sc_in sc_lv 32 signal 297 } 
	{ weights_load_3746 sc_in sc_lv 32 signal 298 } 
	{ weights_load_3747 sc_in sc_lv 32 signal 299 } 
	{ weights_load_3748 sc_in sc_lv 32 signal 300 } 
	{ weights_load_3749 sc_in sc_lv 32 signal 301 } 
	{ weights_load_3750 sc_in sc_lv 32 signal 302 } 
	{ weights_load_3751 sc_in sc_lv 32 signal 303 } 
	{ weights_load_3752 sc_in sc_lv 32 signal 304 } 
	{ weights_load_3753 sc_in sc_lv 32 signal 305 } 
	{ weights_load_3754 sc_in sc_lv 32 signal 306 } 
	{ weights_load_3755 sc_in sc_lv 32 signal 307 } 
	{ weights_load_3756 sc_in sc_lv 32 signal 308 } 
	{ weights_load_3757 sc_in sc_lv 32 signal 309 } 
	{ weights_load_3758 sc_in sc_lv 32 signal 310 } 
	{ weights_load_3759 sc_in sc_lv 32 signal 311 } 
	{ weights_load_3760 sc_in sc_lv 32 signal 312 } 
	{ weights_load_3761 sc_in sc_lv 32 signal 313 } 
	{ weights_load_3762 sc_in sc_lv 32 signal 314 } 
	{ weights_load_3763 sc_in sc_lv 32 signal 315 } 
	{ weights_load_3764 sc_in sc_lv 32 signal 316 } 
	{ weights_load_3765 sc_in sc_lv 32 signal 317 } 
	{ weights_load_3766 sc_in sc_lv 32 signal 318 } 
	{ weights_load_3767 sc_in sc_lv 32 signal 319 } 
	{ weights_load_3768 sc_in sc_lv 32 signal 320 } 
	{ weights_load_3769 sc_in sc_lv 32 signal 321 } 
	{ weights_load_3770 sc_in sc_lv 32 signal 322 } 
	{ weights_load_3771 sc_in sc_lv 32 signal 323 } 
	{ weights_load_3772 sc_in sc_lv 32 signal 324 } 
	{ weights_load_3773 sc_in sc_lv 32 signal 325 } 
	{ weights_load_3774 sc_in sc_lv 32 signal 326 } 
	{ weights_load_3775 sc_in sc_lv 32 signal 327 } 
	{ weights_load_3776 sc_in sc_lv 32 signal 328 } 
	{ weights_load_3777 sc_in sc_lv 32 signal 329 } 
	{ weights_load_3778 sc_in sc_lv 32 signal 330 } 
	{ weights_load_3779 sc_in sc_lv 32 signal 331 } 
	{ weights_load_3780 sc_in sc_lv 32 signal 332 } 
	{ weights_load_3781 sc_in sc_lv 32 signal 333 } 
	{ weights_load_3782 sc_in sc_lv 32 signal 334 } 
	{ weights_load_3783 sc_in sc_lv 32 signal 335 } 
	{ weights_load_3784 sc_in sc_lv 32 signal 336 } 
	{ weights_load_3785 sc_in sc_lv 32 signal 337 } 
	{ weights_load_3786 sc_in sc_lv 32 signal 338 } 
	{ weights_load_3787 sc_in sc_lv 32 signal 339 } 
	{ weights_load_3788 sc_in sc_lv 32 signal 340 } 
	{ weights_load_3789 sc_in sc_lv 32 signal 341 } 
	{ weights_load_3790 sc_in sc_lv 32 signal 342 } 
	{ weights_load_3791 sc_in sc_lv 32 signal 343 } 
	{ weights_load_3792 sc_in sc_lv 32 signal 344 } 
	{ weights_load_3793 sc_in sc_lv 32 signal 345 } 
	{ weights_load_3794 sc_in sc_lv 32 signal 346 } 
	{ weights_load_3795 sc_in sc_lv 32 signal 347 } 
	{ weights_load_3796 sc_in sc_lv 32 signal 348 } 
	{ weights_load_3797 sc_in sc_lv 32 signal 349 } 
	{ weights_load_3798 sc_in sc_lv 32 signal 350 } 
	{ weights_load_3799 sc_in sc_lv 32 signal 351 } 
	{ weights_load_3800 sc_in sc_lv 32 signal 352 } 
	{ weights_load_3801 sc_in sc_lv 32 signal 353 } 
	{ weights_load_3802 sc_in sc_lv 32 signal 354 } 
	{ weights_load_3803 sc_in sc_lv 32 signal 355 } 
	{ weights_load_3804 sc_in sc_lv 32 signal 356 } 
	{ weights_load_3805 sc_in sc_lv 32 signal 357 } 
	{ weights_load_3806 sc_in sc_lv 32 signal 358 } 
	{ weights_load_3807 sc_in sc_lv 32 signal 359 } 
	{ weights_load_3808 sc_in sc_lv 32 signal 360 } 
	{ weights_load_3809 sc_in sc_lv 32 signal 361 } 
	{ weights_load_3810 sc_in sc_lv 32 signal 362 } 
	{ weights_load_3811 sc_in sc_lv 32 signal 363 } 
	{ weights_load_3812 sc_in sc_lv 32 signal 364 } 
	{ weights_load_3813 sc_in sc_lv 32 signal 365 } 
	{ weights_load_3814 sc_in sc_lv 32 signal 366 } 
	{ weights_load_3815 sc_in sc_lv 32 signal 367 } 
	{ weights_load_3816 sc_in sc_lv 32 signal 368 } 
	{ weights_load_3817 sc_in sc_lv 32 signal 369 } 
	{ weights_load_3818 sc_in sc_lv 32 signal 370 } 
	{ weights_load_3819 sc_in sc_lv 32 signal 371 } 
	{ weights_load_3820 sc_in sc_lv 32 signal 372 } 
	{ weights_load_3821 sc_in sc_lv 32 signal 373 } 
	{ weights_load_3822 sc_in sc_lv 32 signal 374 } 
	{ weights_load_3823 sc_in sc_lv 32 signal 375 } 
	{ weights_load_3824 sc_in sc_lv 32 signal 376 } 
	{ weights_load_3825 sc_in sc_lv 32 signal 377 } 
	{ weights_load_3826 sc_in sc_lv 32 signal 378 } 
	{ weights_load_3827 sc_in sc_lv 32 signal 379 } 
	{ weights_load_3828 sc_in sc_lv 32 signal 380 } 
	{ weights_load_3829 sc_in sc_lv 32 signal 381 } 
	{ weights_load_3830 sc_in sc_lv 32 signal 382 } 
	{ weights_load_3831 sc_in sc_lv 32 signal 383 } 
	{ weights_load_3832 sc_in sc_lv 32 signal 384 } 
	{ weights_load_3833 sc_in sc_lv 32 signal 385 } 
	{ weights_load_3834 sc_in sc_lv 32 signal 386 } 
	{ weights_load_3835 sc_in sc_lv 32 signal 387 } 
	{ weights_load_3836 sc_in sc_lv 32 signal 388 } 
	{ weights_load_3837 sc_in sc_lv 32 signal 389 } 
	{ weights_load_3838 sc_in sc_lv 32 signal 390 } 
	{ weights_load_3839 sc_in sc_lv 32 signal 391 } 
	{ weights_load_3840 sc_in sc_lv 32 signal 392 } 
	{ weights_load_3841 sc_in sc_lv 32 signal 393 } 
	{ weights_load_3842 sc_in sc_lv 32 signal 394 } 
	{ weights_load_3843 sc_in sc_lv 32 signal 395 } 
	{ weights_load_3844 sc_in sc_lv 32 signal 396 } 
	{ weights_load_3845 sc_in sc_lv 32 signal 397 } 
	{ weights_load_3846 sc_in sc_lv 32 signal 398 } 
	{ weights_load_3847 sc_in sc_lv 32 signal 399 } 
	{ weights_load_3848 sc_in sc_lv 32 signal 400 } 
	{ weights_load_3849 sc_in sc_lv 32 signal 401 } 
	{ weights_load_3850 sc_in sc_lv 32 signal 402 } 
	{ weights_load_3851 sc_in sc_lv 32 signal 403 } 
	{ weights_load_3852 sc_in sc_lv 32 signal 404 } 
	{ weights_load_3853 sc_in sc_lv 32 signal 405 } 
	{ weights_load_3854 sc_in sc_lv 32 signal 406 } 
	{ weights_load_3855 sc_in sc_lv 32 signal 407 } 
	{ weights_load_3856 sc_in sc_lv 32 signal 408 } 
	{ weights_load_3857 sc_in sc_lv 32 signal 409 } 
	{ weights_load_3858 sc_in sc_lv 32 signal 410 } 
	{ weights_load_3859 sc_in sc_lv 32 signal 411 } 
	{ weights_load_3860 sc_in sc_lv 32 signal 412 } 
	{ weights_load_3861 sc_in sc_lv 32 signal 413 } 
	{ weights_load_3862 sc_in sc_lv 32 signal 414 } 
	{ weights_load_3863 sc_in sc_lv 32 signal 415 } 
	{ weights_load_3864 sc_in sc_lv 32 signal 416 } 
	{ weights_load_3865 sc_in sc_lv 32 signal 417 } 
	{ weights_load_3866 sc_in sc_lv 32 signal 418 } 
	{ weights_load_3867 sc_in sc_lv 32 signal 419 } 
	{ weights_load_3868 sc_in sc_lv 32 signal 420 } 
	{ weights_load_3869 sc_in sc_lv 32 signal 421 } 
	{ weights_load_3870 sc_in sc_lv 32 signal 422 } 
	{ weights_load_3871 sc_in sc_lv 32 signal 423 } 
	{ weights_load_3872 sc_in sc_lv 32 signal 424 } 
	{ weights_load_3873 sc_in sc_lv 32 signal 425 } 
	{ weights_load_3874 sc_in sc_lv 32 signal 426 } 
	{ weights_load_3875 sc_in sc_lv 32 signal 427 } 
	{ weights_load_3876 sc_in sc_lv 32 signal 428 } 
	{ weights_load_3877 sc_in sc_lv 32 signal 429 } 
	{ weights_load_3878 sc_in sc_lv 32 signal 430 } 
	{ weights_load_3879 sc_in sc_lv 32 signal 431 } 
	{ weights_load_3880 sc_in sc_lv 32 signal 432 } 
	{ weights_load_3881 sc_in sc_lv 32 signal 433 } 
	{ weights_load_3882 sc_in sc_lv 32 signal 434 } 
	{ weights_load_3883 sc_in sc_lv 32 signal 435 } 
	{ weights_load_3884 sc_in sc_lv 32 signal 436 } 
	{ weights_load_3885 sc_in sc_lv 32 signal 437 } 
	{ weights_load_3886 sc_in sc_lv 32 signal 438 } 
	{ weights_load_3887 sc_in sc_lv 32 signal 439 } 
	{ weights_load_3888 sc_in sc_lv 32 signal 440 } 
	{ weights_load_3889 sc_in sc_lv 32 signal 441 } 
	{ weights_load_3890 sc_in sc_lv 32 signal 442 } 
	{ weights_load_3891 sc_in sc_lv 32 signal 443 } 
	{ weights_load_3892 sc_in sc_lv 32 signal 444 } 
	{ weights_load_3893 sc_in sc_lv 32 signal 445 } 
	{ weights_load_3894 sc_in sc_lv 32 signal 446 } 
	{ weights_load_3895 sc_in sc_lv 32 signal 447 } 
	{ weights_load_3896 sc_in sc_lv 32 signal 448 } 
	{ weights_load_3897 sc_in sc_lv 32 signal 449 } 
	{ weights_load_3898 sc_in sc_lv 32 signal 450 } 
	{ weights_load_3899 sc_in sc_lv 32 signal 451 } 
	{ weights_load_3900 sc_in sc_lv 32 signal 452 } 
	{ weights_load_3901 sc_in sc_lv 32 signal 453 } 
	{ weights_load_3902 sc_in sc_lv 32 signal 454 } 
	{ weights_load_3903 sc_in sc_lv 32 signal 455 } 
	{ weights_load_3904 sc_in sc_lv 32 signal 456 } 
	{ weights_load_3905 sc_in sc_lv 32 signal 457 } 
	{ weights_load_3906 sc_in sc_lv 32 signal 458 } 
	{ weights_load_3907 sc_in sc_lv 32 signal 459 } 
	{ weights_load_3908 sc_in sc_lv 32 signal 460 } 
	{ weights_load_3909 sc_in sc_lv 32 signal 461 } 
	{ weights_load_3910 sc_in sc_lv 32 signal 462 } 
	{ weights_load_3911 sc_in sc_lv 32 signal 463 } 
	{ weights_load_3912 sc_in sc_lv 32 signal 464 } 
	{ weights_load_3913 sc_in sc_lv 32 signal 465 } 
	{ weights_load_3914 sc_in sc_lv 32 signal 466 } 
	{ weights_load_3915 sc_in sc_lv 32 signal 467 } 
	{ weights_load_3916 sc_in sc_lv 32 signal 468 } 
	{ weights_load_3917 sc_in sc_lv 32 signal 469 } 
	{ weights_load_3918 sc_in sc_lv 32 signal 470 } 
	{ weights_load_3919 sc_in sc_lv 32 signal 471 } 
	{ weights_load_3920 sc_in sc_lv 32 signal 472 } 
	{ weights_load_3921 sc_in sc_lv 32 signal 473 } 
	{ weights_load_3922 sc_in sc_lv 32 signal 474 } 
	{ weights_load_3923 sc_in sc_lv 32 signal 475 } 
	{ weights_load_3924 sc_in sc_lv 32 signal 476 } 
	{ weights_load_3925 sc_in sc_lv 32 signal 477 } 
	{ weights_load_3926 sc_in sc_lv 32 signal 478 } 
	{ weights_load_3927 sc_in sc_lv 32 signal 479 } 
	{ weights_load_3928 sc_in sc_lv 32 signal 480 } 
	{ weights_load_3929 sc_in sc_lv 32 signal 481 } 
	{ weights_load_3930 sc_in sc_lv 32 signal 482 } 
	{ weights_load_3931 sc_in sc_lv 32 signal 483 } 
	{ weights_load_3932 sc_in sc_lv 32 signal 484 } 
	{ weights_load_3933 sc_in sc_lv 32 signal 485 } 
	{ weights_load_3934 sc_in sc_lv 32 signal 486 } 
	{ weights_load_3935 sc_in sc_lv 32 signal 487 } 
	{ weights_load_3936 sc_in sc_lv 32 signal 488 } 
	{ weights_load_3937 sc_in sc_lv 32 signal 489 } 
	{ weights_load_3938 sc_in sc_lv 32 signal 490 } 
	{ weights_load_3939 sc_in sc_lv 32 signal 491 } 
	{ weights_load_3940 sc_in sc_lv 32 signal 492 } 
	{ weights_load_3941 sc_in sc_lv 32 signal 493 } 
	{ weights_load_3942 sc_in sc_lv 32 signal 494 } 
	{ weights_load_3943 sc_in sc_lv 32 signal 495 } 
	{ weights_load_3944 sc_in sc_lv 32 signal 496 } 
	{ weights_load_3945 sc_in sc_lv 32 signal 497 } 
	{ weights_load_3946 sc_in sc_lv 32 signal 498 } 
	{ weights_load_3947 sc_in sc_lv 32 signal 499 } 
	{ weights_load_3948 sc_in sc_lv 32 signal 500 } 
	{ weights_load_3949 sc_in sc_lv 32 signal 501 } 
	{ weights_load_3950 sc_in sc_lv 32 signal 502 } 
	{ weights_load_3951 sc_in sc_lv 32 signal 503 } 
	{ weights_load_3952 sc_in sc_lv 32 signal 504 } 
	{ weights_load_3953 sc_in sc_lv 32 signal 505 } 
	{ weights_load_3954 sc_in sc_lv 32 signal 506 } 
	{ weights_load_3955 sc_in sc_lv 32 signal 507 } 
	{ weights_load_3956 sc_in sc_lv 32 signal 508 } 
	{ weights_load_3957 sc_in sc_lv 32 signal 509 } 
	{ weights_load_3958 sc_in sc_lv 32 signal 510 } 
	{ weights_load_3959 sc_in sc_lv 32 signal 511 } 
	{ weights_load_3960 sc_in sc_lv 32 signal 512 } 
	{ weights_load_3961 sc_in sc_lv 32 signal 513 } 
	{ weights_load_3962 sc_in sc_lv 32 signal 514 } 
	{ weights_load_3963 sc_in sc_lv 32 signal 515 } 
	{ weights_load_3964 sc_in sc_lv 32 signal 516 } 
	{ weights_load_3965 sc_in sc_lv 32 signal 517 } 
	{ weights_load_3966 sc_in sc_lv 32 signal 518 } 
	{ weights_load_3967 sc_in sc_lv 32 signal 519 } 
	{ weights_load_3968 sc_in sc_lv 32 signal 520 } 
	{ weights_load_3969 sc_in sc_lv 32 signal 521 } 
	{ weights_load_3970 sc_in sc_lv 32 signal 522 } 
	{ weights_load_3971 sc_in sc_lv 32 signal 523 } 
	{ weights_load_3972 sc_in sc_lv 32 signal 524 } 
	{ weights_load_3973 sc_in sc_lv 32 signal 525 } 
	{ weights_load_3974 sc_in sc_lv 32 signal 526 } 
	{ weights_load_3975 sc_in sc_lv 32 signal 527 } 
	{ weights_load_3976 sc_in sc_lv 32 signal 528 } 
	{ weights_load_3977 sc_in sc_lv 32 signal 529 } 
	{ weights_load_3978 sc_in sc_lv 32 signal 530 } 
	{ weights_load_3979 sc_in sc_lv 32 signal 531 } 
	{ weights_load_3980 sc_in sc_lv 32 signal 532 } 
	{ weights_load_3981 sc_in sc_lv 32 signal 533 } 
	{ weights_load_3982 sc_in sc_lv 32 signal 534 } 
	{ weights_load_3983 sc_in sc_lv 32 signal 535 } 
	{ weights_load_3984 sc_in sc_lv 32 signal 536 } 
	{ weights_load_3985 sc_in sc_lv 32 signal 537 } 
	{ weights_load_3986 sc_in sc_lv 32 signal 538 } 
	{ weights_load_3987 sc_in sc_lv 32 signal 539 } 
	{ weights_load_3988 sc_in sc_lv 32 signal 540 } 
	{ weights_load_3989 sc_in sc_lv 32 signal 541 } 
	{ weights_load_3990 sc_in sc_lv 32 signal 542 } 
	{ weights_load_3991 sc_in sc_lv 32 signal 543 } 
	{ weights_load_3992 sc_in sc_lv 32 signal 544 } 
	{ weights_load_3993 sc_in sc_lv 32 signal 545 } 
	{ weights_load_3994 sc_in sc_lv 32 signal 546 } 
	{ weights_load_3995 sc_in sc_lv 32 signal 547 } 
	{ weights_load_3996 sc_in sc_lv 32 signal 548 } 
	{ weights_load_3997 sc_in sc_lv 32 signal 549 } 
	{ weights_load_3998 sc_in sc_lv 32 signal 550 } 
	{ weights_load_3999 sc_in sc_lv 32 signal 551 } 
	{ weights_load_4000 sc_in sc_lv 32 signal 552 } 
	{ weights_load_4001 sc_in sc_lv 32 signal 553 } 
	{ weights_load_4002 sc_in sc_lv 32 signal 554 } 
	{ weights_load_4003 sc_in sc_lv 32 signal 555 } 
	{ weights_load_4004 sc_in sc_lv 32 signal 556 } 
	{ weights_load_4005 sc_in sc_lv 32 signal 557 } 
	{ weights_load_4006 sc_in sc_lv 32 signal 558 } 
	{ weights_load_4007 sc_in sc_lv 32 signal 559 } 
	{ weights_load_4008 sc_in sc_lv 32 signal 560 } 
	{ weights_load_4009 sc_in sc_lv 32 signal 561 } 
	{ weights_load_4010 sc_in sc_lv 32 signal 562 } 
	{ weights_load_4011 sc_in sc_lv 32 signal 563 } 
	{ weights_load_4012 sc_in sc_lv 32 signal 564 } 
	{ weights_load_4013 sc_in sc_lv 32 signal 565 } 
	{ weights_load_4014 sc_in sc_lv 32 signal 566 } 
	{ weights_load_4015 sc_in sc_lv 32 signal 567 } 
	{ weights_load_4016 sc_in sc_lv 32 signal 568 } 
	{ weights_load_4017 sc_in sc_lv 32 signal 569 } 
	{ weights_load_4018 sc_in sc_lv 32 signal 570 } 
	{ weights_load_4019 sc_in sc_lv 32 signal 571 } 
	{ weights_load_4020 sc_in sc_lv 32 signal 572 } 
	{ weights_load_4021 sc_in sc_lv 32 signal 573 } 
	{ weights_load_4022 sc_in sc_lv 32 signal 574 } 
	{ weights_load_4023 sc_in sc_lv 32 signal 575 } 
	{ weights_load_4024 sc_in sc_lv 32 signal 576 } 
	{ weights_load_4025 sc_in sc_lv 32 signal 577 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_channel_map_stream_31_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_31_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_31_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_31_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_31_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "read" }} , 
 	{ "name": "weights_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load", "role": "default" }} , 
 	{ "name": "weights_load_3451", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3451", "role": "default" }} , 
 	{ "name": "weights_load_3452", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3452", "role": "default" }} , 
 	{ "name": "weights_load_3453", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3453", "role": "default" }} , 
 	{ "name": "weights_load_3454", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3454", "role": "default" }} , 
 	{ "name": "weights_load_3455", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3455", "role": "default" }} , 
 	{ "name": "weights_load_3456", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3456", "role": "default" }} , 
 	{ "name": "weights_load_3457", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3457", "role": "default" }} , 
 	{ "name": "weights_load_3458", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3458", "role": "default" }} , 
 	{ "name": "weights_load_3459", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3459", "role": "default" }} , 
 	{ "name": "weights_load_3460", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3460", "role": "default" }} , 
 	{ "name": "weights_load_3461", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3461", "role": "default" }} , 
 	{ "name": "weights_load_3462", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3462", "role": "default" }} , 
 	{ "name": "weights_load_3463", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3463", "role": "default" }} , 
 	{ "name": "weights_load_3464", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3464", "role": "default" }} , 
 	{ "name": "weights_load_3465", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3465", "role": "default" }} , 
 	{ "name": "weights_load_3466", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3466", "role": "default" }} , 
 	{ "name": "weights_load_3467", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3467", "role": "default" }} , 
 	{ "name": "weights_load_3468", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3468", "role": "default" }} , 
 	{ "name": "weights_load_3469", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3469", "role": "default" }} , 
 	{ "name": "weights_load_3470", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3470", "role": "default" }} , 
 	{ "name": "weights_load_3471", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3471", "role": "default" }} , 
 	{ "name": "weights_load_3472", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3472", "role": "default" }} , 
 	{ "name": "weights_load_3473", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3473", "role": "default" }} , 
 	{ "name": "weights_load_3474", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3474", "role": "default" }} , 
 	{ "name": "weights_load_3475", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3475", "role": "default" }} , 
 	{ "name": "weights_load_3476", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3476", "role": "default" }} , 
 	{ "name": "weights_load_3477", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3477", "role": "default" }} , 
 	{ "name": "weights_load_3478", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3478", "role": "default" }} , 
 	{ "name": "weights_load_3479", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3479", "role": "default" }} , 
 	{ "name": "weights_load_3480", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3480", "role": "default" }} , 
 	{ "name": "weights_load_3481", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3481", "role": "default" }} , 
 	{ "name": "weights_load_3482", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3482", "role": "default" }} , 
 	{ "name": "weights_load_3483", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3483", "role": "default" }} , 
 	{ "name": "weights_load_3484", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3484", "role": "default" }} , 
 	{ "name": "weights_load_3485", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3485", "role": "default" }} , 
 	{ "name": "weights_load_3486", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3486", "role": "default" }} , 
 	{ "name": "weights_load_3487", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3487", "role": "default" }} , 
 	{ "name": "weights_load_3488", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3488", "role": "default" }} , 
 	{ "name": "weights_load_3489", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3489", "role": "default" }} , 
 	{ "name": "weights_load_3490", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3490", "role": "default" }} , 
 	{ "name": "weights_load_3491", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3491", "role": "default" }} , 
 	{ "name": "weights_load_3492", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3492", "role": "default" }} , 
 	{ "name": "weights_load_3493", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3493", "role": "default" }} , 
 	{ "name": "weights_load_3494", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3494", "role": "default" }} , 
 	{ "name": "weights_load_3495", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3495", "role": "default" }} , 
 	{ "name": "weights_load_3496", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3496", "role": "default" }} , 
 	{ "name": "weights_load_3497", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3497", "role": "default" }} , 
 	{ "name": "weights_load_3498", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3498", "role": "default" }} , 
 	{ "name": "weights_load_3499", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3499", "role": "default" }} , 
 	{ "name": "weights_load_3500", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3500", "role": "default" }} , 
 	{ "name": "weights_load_3501", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3501", "role": "default" }} , 
 	{ "name": "weights_load_3502", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3502", "role": "default" }} , 
 	{ "name": "weights_load_3503", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3503", "role": "default" }} , 
 	{ "name": "weights_load_3504", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3504", "role": "default" }} , 
 	{ "name": "weights_load_3505", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3505", "role": "default" }} , 
 	{ "name": "weights_load_3506", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3506", "role": "default" }} , 
 	{ "name": "weights_load_3507", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3507", "role": "default" }} , 
 	{ "name": "weights_load_3508", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3508", "role": "default" }} , 
 	{ "name": "weights_load_3509", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3509", "role": "default" }} , 
 	{ "name": "weights_load_3510", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3510", "role": "default" }} , 
 	{ "name": "weights_load_3511", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3511", "role": "default" }} , 
 	{ "name": "weights_load_3512", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3512", "role": "default" }} , 
 	{ "name": "weights_load_3513", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3513", "role": "default" }} , 
 	{ "name": "weights_load_3514", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3514", "role": "default" }} , 
 	{ "name": "weights_load_3515", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3515", "role": "default" }} , 
 	{ "name": "weights_load_3516", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3516", "role": "default" }} , 
 	{ "name": "weights_load_3517", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3517", "role": "default" }} , 
 	{ "name": "weights_load_3518", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3518", "role": "default" }} , 
 	{ "name": "weights_load_3519", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3519", "role": "default" }} , 
 	{ "name": "weights_load_3520", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3520", "role": "default" }} , 
 	{ "name": "weights_load_3521", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3521", "role": "default" }} , 
 	{ "name": "weights_load_3522", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3522", "role": "default" }} , 
 	{ "name": "weights_load_3523", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3523", "role": "default" }} , 
 	{ "name": "weights_load_3524", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3524", "role": "default" }} , 
 	{ "name": "weights_load_3525", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3525", "role": "default" }} , 
 	{ "name": "weights_load_3526", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3526", "role": "default" }} , 
 	{ "name": "weights_load_3527", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3527", "role": "default" }} , 
 	{ "name": "weights_load_3528", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3528", "role": "default" }} , 
 	{ "name": "weights_load_3529", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3529", "role": "default" }} , 
 	{ "name": "weights_load_3530", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3530", "role": "default" }} , 
 	{ "name": "weights_load_3531", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3531", "role": "default" }} , 
 	{ "name": "weights_load_3532", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3532", "role": "default" }} , 
 	{ "name": "weights_load_3533", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3533", "role": "default" }} , 
 	{ "name": "weights_load_3534", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3534", "role": "default" }} , 
 	{ "name": "weights_load_3535", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3535", "role": "default" }} , 
 	{ "name": "weights_load_3536", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3536", "role": "default" }} , 
 	{ "name": "weights_load_3537", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3537", "role": "default" }} , 
 	{ "name": "weights_load_3538", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3538", "role": "default" }} , 
 	{ "name": "weights_load_3539", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3539", "role": "default" }} , 
 	{ "name": "weights_load_3540", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3540", "role": "default" }} , 
 	{ "name": "weights_load_3541", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3541", "role": "default" }} , 
 	{ "name": "weights_load_3542", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3542", "role": "default" }} , 
 	{ "name": "weights_load_3543", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3543", "role": "default" }} , 
 	{ "name": "weights_load_3544", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3544", "role": "default" }} , 
 	{ "name": "weights_load_3545", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3545", "role": "default" }} , 
 	{ "name": "weights_load_3546", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3546", "role": "default" }} , 
 	{ "name": "weights_load_3547", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3547", "role": "default" }} , 
 	{ "name": "weights_load_3548", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3548", "role": "default" }} , 
 	{ "name": "weights_load_3549", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3549", "role": "default" }} , 
 	{ "name": "weights_load_3550", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3550", "role": "default" }} , 
 	{ "name": "weights_load_3551", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3551", "role": "default" }} , 
 	{ "name": "weights_load_3552", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3552", "role": "default" }} , 
 	{ "name": "weights_load_3553", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3553", "role": "default" }} , 
 	{ "name": "weights_load_3554", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3554", "role": "default" }} , 
 	{ "name": "weights_load_3555", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3555", "role": "default" }} , 
 	{ "name": "weights_load_3556", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3556", "role": "default" }} , 
 	{ "name": "weights_load_3557", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3557", "role": "default" }} , 
 	{ "name": "weights_load_3558", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3558", "role": "default" }} , 
 	{ "name": "weights_load_3559", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3559", "role": "default" }} , 
 	{ "name": "weights_load_3560", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3560", "role": "default" }} , 
 	{ "name": "weights_load_3561", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3561", "role": "default" }} , 
 	{ "name": "weights_load_3562", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3562", "role": "default" }} , 
 	{ "name": "weights_load_3563", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3563", "role": "default" }} , 
 	{ "name": "weights_load_3564", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3564", "role": "default" }} , 
 	{ "name": "weights_load_3565", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3565", "role": "default" }} , 
 	{ "name": "weights_load_3566", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3566", "role": "default" }} , 
 	{ "name": "weights_load_3567", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3567", "role": "default" }} , 
 	{ "name": "weights_load_3568", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3568", "role": "default" }} , 
 	{ "name": "weights_load_3569", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3569", "role": "default" }} , 
 	{ "name": "weights_load_3570", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3570", "role": "default" }} , 
 	{ "name": "weights_load_3571", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3571", "role": "default" }} , 
 	{ "name": "weights_load_3572", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3572", "role": "default" }} , 
 	{ "name": "weights_load_3573", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3573", "role": "default" }} , 
 	{ "name": "weights_load_3574", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3574", "role": "default" }} , 
 	{ "name": "weights_load_3575", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3575", "role": "default" }} , 
 	{ "name": "weights_load_3576", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3576", "role": "default" }} , 
 	{ "name": "weights_load_3577", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3577", "role": "default" }} , 
 	{ "name": "weights_load_3578", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3578", "role": "default" }} , 
 	{ "name": "weights_load_3579", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3579", "role": "default" }} , 
 	{ "name": "weights_load_3580", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3580", "role": "default" }} , 
 	{ "name": "weights_load_3581", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3581", "role": "default" }} , 
 	{ "name": "weights_load_3582", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3582", "role": "default" }} , 
 	{ "name": "weights_load_3583", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3583", "role": "default" }} , 
 	{ "name": "weights_load_3584", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3584", "role": "default" }} , 
 	{ "name": "weights_load_3585", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3585", "role": "default" }} , 
 	{ "name": "weights_load_3586", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3586", "role": "default" }} , 
 	{ "name": "weights_load_3587", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3587", "role": "default" }} , 
 	{ "name": "weights_load_3588", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3588", "role": "default" }} , 
 	{ "name": "weights_load_3589", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3589", "role": "default" }} , 
 	{ "name": "weights_load_3590", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3590", "role": "default" }} , 
 	{ "name": "weights_load_3591", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3591", "role": "default" }} , 
 	{ "name": "weights_load_3592", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3592", "role": "default" }} , 
 	{ "name": "weights_load_3593", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3593", "role": "default" }} , 
 	{ "name": "weights_load_3594", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3594", "role": "default" }} , 
 	{ "name": "weights_load_3595", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3595", "role": "default" }} , 
 	{ "name": "weights_load_3596", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3596", "role": "default" }} , 
 	{ "name": "weights_load_3597", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3597", "role": "default" }} , 
 	{ "name": "weights_load_3598", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3598", "role": "default" }} , 
 	{ "name": "weights_load_3599", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3599", "role": "default" }} , 
 	{ "name": "weights_load_3600", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3600", "role": "default" }} , 
 	{ "name": "weights_load_3601", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3601", "role": "default" }} , 
 	{ "name": "weights_load_3602", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3602", "role": "default" }} , 
 	{ "name": "weights_load_3603", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3603", "role": "default" }} , 
 	{ "name": "weights_load_3604", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3604", "role": "default" }} , 
 	{ "name": "weights_load_3605", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3605", "role": "default" }} , 
 	{ "name": "weights_load_3606", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3606", "role": "default" }} , 
 	{ "name": "weights_load_3607", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3607", "role": "default" }} , 
 	{ "name": "weights_load_3608", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3608", "role": "default" }} , 
 	{ "name": "weights_load_3609", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3609", "role": "default" }} , 
 	{ "name": "weights_load_3610", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3610", "role": "default" }} , 
 	{ "name": "weights_load_3611", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3611", "role": "default" }} , 
 	{ "name": "weights_load_3612", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3612", "role": "default" }} , 
 	{ "name": "weights_load_3613", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3613", "role": "default" }} , 
 	{ "name": "weights_load_3614", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3614", "role": "default" }} , 
 	{ "name": "weights_load_3615", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3615", "role": "default" }} , 
 	{ "name": "weights_load_3616", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3616", "role": "default" }} , 
 	{ "name": "weights_load_3617", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3617", "role": "default" }} , 
 	{ "name": "weights_load_3618", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3618", "role": "default" }} , 
 	{ "name": "weights_load_3619", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3619", "role": "default" }} , 
 	{ "name": "weights_load_3620", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3620", "role": "default" }} , 
 	{ "name": "weights_load_3621", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3621", "role": "default" }} , 
 	{ "name": "weights_load_3622", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3622", "role": "default" }} , 
 	{ "name": "weights_load_3623", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3623", "role": "default" }} , 
 	{ "name": "weights_load_3624", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3624", "role": "default" }} , 
 	{ "name": "weights_load_3625", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3625", "role": "default" }} , 
 	{ "name": "weights_load_3626", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3626", "role": "default" }} , 
 	{ "name": "weights_load_3627", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3627", "role": "default" }} , 
 	{ "name": "weights_load_3628", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3628", "role": "default" }} , 
 	{ "name": "weights_load_3629", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3629", "role": "default" }} , 
 	{ "name": "weights_load_3630", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3630", "role": "default" }} , 
 	{ "name": "weights_load_3631", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3631", "role": "default" }} , 
 	{ "name": "weights_load_3632", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3632", "role": "default" }} , 
 	{ "name": "weights_load_3633", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3633", "role": "default" }} , 
 	{ "name": "weights_load_3634", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3634", "role": "default" }} , 
 	{ "name": "weights_load_3635", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3635", "role": "default" }} , 
 	{ "name": "weights_load_3636", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3636", "role": "default" }} , 
 	{ "name": "weights_load_3637", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3637", "role": "default" }} , 
 	{ "name": "weights_load_3638", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3638", "role": "default" }} , 
 	{ "name": "weights_load_3639", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3639", "role": "default" }} , 
 	{ "name": "weights_load_3640", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3640", "role": "default" }} , 
 	{ "name": "weights_load_3641", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3641", "role": "default" }} , 
 	{ "name": "weights_load_3642", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3642", "role": "default" }} , 
 	{ "name": "weights_load_3643", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3643", "role": "default" }} , 
 	{ "name": "weights_load_3644", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3644", "role": "default" }} , 
 	{ "name": "weights_load_3645", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3645", "role": "default" }} , 
 	{ "name": "weights_load_3646", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3646", "role": "default" }} , 
 	{ "name": "weights_load_3647", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3647", "role": "default" }} , 
 	{ "name": "weights_load_3648", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3648", "role": "default" }} , 
 	{ "name": "weights_load_3649", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3649", "role": "default" }} , 
 	{ "name": "weights_load_3650", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3650", "role": "default" }} , 
 	{ "name": "weights_load_3651", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3651", "role": "default" }} , 
 	{ "name": "weights_load_3652", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3652", "role": "default" }} , 
 	{ "name": "weights_load_3653", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3653", "role": "default" }} , 
 	{ "name": "weights_load_3654", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3654", "role": "default" }} , 
 	{ "name": "weights_load_3655", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3655", "role": "default" }} , 
 	{ "name": "weights_load_3656", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3656", "role": "default" }} , 
 	{ "name": "weights_load_3657", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3657", "role": "default" }} , 
 	{ "name": "weights_load_3658", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3658", "role": "default" }} , 
 	{ "name": "weights_load_3659", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3659", "role": "default" }} , 
 	{ "name": "weights_load_3660", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3660", "role": "default" }} , 
 	{ "name": "weights_load_3661", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3661", "role": "default" }} , 
 	{ "name": "weights_load_3662", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3662", "role": "default" }} , 
 	{ "name": "weights_load_3663", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3663", "role": "default" }} , 
 	{ "name": "weights_load_3664", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3664", "role": "default" }} , 
 	{ "name": "weights_load_3665", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3665", "role": "default" }} , 
 	{ "name": "weights_load_3666", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3666", "role": "default" }} , 
 	{ "name": "weights_load_3667", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3667", "role": "default" }} , 
 	{ "name": "weights_load_3668", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3668", "role": "default" }} , 
 	{ "name": "weights_load_3669", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3669", "role": "default" }} , 
 	{ "name": "weights_load_3670", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3670", "role": "default" }} , 
 	{ "name": "weights_load_3671", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3671", "role": "default" }} , 
 	{ "name": "weights_load_3672", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3672", "role": "default" }} , 
 	{ "name": "weights_load_3673", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3673", "role": "default" }} , 
 	{ "name": "weights_load_3674", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3674", "role": "default" }} , 
 	{ "name": "weights_load_3675", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3675", "role": "default" }} , 
 	{ "name": "weights_load_3676", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3676", "role": "default" }} , 
 	{ "name": "weights_load_3677", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3677", "role": "default" }} , 
 	{ "name": "weights_load_3678", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3678", "role": "default" }} , 
 	{ "name": "weights_load_3679", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3679", "role": "default" }} , 
 	{ "name": "weights_load_3680", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3680", "role": "default" }} , 
 	{ "name": "weights_load_3681", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3681", "role": "default" }} , 
 	{ "name": "weights_load_3682", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3682", "role": "default" }} , 
 	{ "name": "weights_load_3683", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3683", "role": "default" }} , 
 	{ "name": "weights_load_3684", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3684", "role": "default" }} , 
 	{ "name": "weights_load_3685", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3685", "role": "default" }} , 
 	{ "name": "weights_load_3686", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3686", "role": "default" }} , 
 	{ "name": "weights_load_3687", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3687", "role": "default" }} , 
 	{ "name": "weights_load_3688", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3688", "role": "default" }} , 
 	{ "name": "weights_load_3689", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3689", "role": "default" }} , 
 	{ "name": "weights_load_3690", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3690", "role": "default" }} , 
 	{ "name": "weights_load_3691", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3691", "role": "default" }} , 
 	{ "name": "weights_load_3692", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3692", "role": "default" }} , 
 	{ "name": "weights_load_3693", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3693", "role": "default" }} , 
 	{ "name": "weights_load_3694", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3694", "role": "default" }} , 
 	{ "name": "weights_load_3695", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3695", "role": "default" }} , 
 	{ "name": "weights_load_3696", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3696", "role": "default" }} , 
 	{ "name": "weights_load_3697", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3697", "role": "default" }} , 
 	{ "name": "weights_load_3698", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3698", "role": "default" }} , 
 	{ "name": "weights_load_3699", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3699", "role": "default" }} , 
 	{ "name": "weights_load_3700", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3700", "role": "default" }} , 
 	{ "name": "weights_load_3701", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3701", "role": "default" }} , 
 	{ "name": "weights_load_3702", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3702", "role": "default" }} , 
 	{ "name": "weights_load_3703", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3703", "role": "default" }} , 
 	{ "name": "weights_load_3704", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3704", "role": "default" }} , 
 	{ "name": "weights_load_3705", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3705", "role": "default" }} , 
 	{ "name": "weights_load_3706", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3706", "role": "default" }} , 
 	{ "name": "weights_load_3707", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3707", "role": "default" }} , 
 	{ "name": "weights_load_3708", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3708", "role": "default" }} , 
 	{ "name": "weights_load_3709", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3709", "role": "default" }} , 
 	{ "name": "weights_load_3710", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3710", "role": "default" }} , 
 	{ "name": "weights_load_3711", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3711", "role": "default" }} , 
 	{ "name": "weights_load_3712", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3712", "role": "default" }} , 
 	{ "name": "weights_load_3713", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3713", "role": "default" }} , 
 	{ "name": "weights_load_3714", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3714", "role": "default" }} , 
 	{ "name": "weights_load_3715", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3715", "role": "default" }} , 
 	{ "name": "weights_load_3716", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3716", "role": "default" }} , 
 	{ "name": "weights_load_3717", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3717", "role": "default" }} , 
 	{ "name": "weights_load_3718", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3718", "role": "default" }} , 
 	{ "name": "weights_load_3719", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3719", "role": "default" }} , 
 	{ "name": "weights_load_3720", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3720", "role": "default" }} , 
 	{ "name": "weights_load_3721", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3721", "role": "default" }} , 
 	{ "name": "weights_load_3722", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3722", "role": "default" }} , 
 	{ "name": "weights_load_3723", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3723", "role": "default" }} , 
 	{ "name": "weights_load_3724", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3724", "role": "default" }} , 
 	{ "name": "weights_load_3725", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3725", "role": "default" }} , 
 	{ "name": "weights_load_3726", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3726", "role": "default" }} , 
 	{ "name": "weights_load_3727", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3727", "role": "default" }} , 
 	{ "name": "weights_load_3728", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3728", "role": "default" }} , 
 	{ "name": "weights_load_3729", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3729", "role": "default" }} , 
 	{ "name": "weights_load_3730", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3730", "role": "default" }} , 
 	{ "name": "weights_load_3731", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3731", "role": "default" }} , 
 	{ "name": "weights_load_3732", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3732", "role": "default" }} , 
 	{ "name": "weights_load_3733", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3733", "role": "default" }} , 
 	{ "name": "weights_load_3734", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3734", "role": "default" }} , 
 	{ "name": "weights_load_3735", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3735", "role": "default" }} , 
 	{ "name": "weights_load_3736", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3736", "role": "default" }} , 
 	{ "name": "weights_load_3737", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3737", "role": "default" }} , 
 	{ "name": "weights_load_3738", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3738", "role": "default" }} , 
 	{ "name": "weights_load_3739", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3739", "role": "default" }} , 
 	{ "name": "weights_load_3740", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3740", "role": "default" }} , 
 	{ "name": "weights_load_3741", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3741", "role": "default" }} , 
 	{ "name": "weights_load_3742", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3742", "role": "default" }} , 
 	{ "name": "weights_load_3743", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3743", "role": "default" }} , 
 	{ "name": "weights_load_3744", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3744", "role": "default" }} , 
 	{ "name": "weights_load_3745", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3745", "role": "default" }} , 
 	{ "name": "weights_load_3746", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3746", "role": "default" }} , 
 	{ "name": "weights_load_3747", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3747", "role": "default" }} , 
 	{ "name": "weights_load_3748", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3748", "role": "default" }} , 
 	{ "name": "weights_load_3749", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3749", "role": "default" }} , 
 	{ "name": "weights_load_3750", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3750", "role": "default" }} , 
 	{ "name": "weights_load_3751", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3751", "role": "default" }} , 
 	{ "name": "weights_load_3752", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3752", "role": "default" }} , 
 	{ "name": "weights_load_3753", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3753", "role": "default" }} , 
 	{ "name": "weights_load_3754", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3754", "role": "default" }} , 
 	{ "name": "weights_load_3755", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3755", "role": "default" }} , 
 	{ "name": "weights_load_3756", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3756", "role": "default" }} , 
 	{ "name": "weights_load_3757", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3757", "role": "default" }} , 
 	{ "name": "weights_load_3758", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3758", "role": "default" }} , 
 	{ "name": "weights_load_3759", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3759", "role": "default" }} , 
 	{ "name": "weights_load_3760", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3760", "role": "default" }} , 
 	{ "name": "weights_load_3761", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3761", "role": "default" }} , 
 	{ "name": "weights_load_3762", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3762", "role": "default" }} , 
 	{ "name": "weights_load_3763", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3763", "role": "default" }} , 
 	{ "name": "weights_load_3764", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3764", "role": "default" }} , 
 	{ "name": "weights_load_3765", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3765", "role": "default" }} , 
 	{ "name": "weights_load_3766", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3766", "role": "default" }} , 
 	{ "name": "weights_load_3767", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3767", "role": "default" }} , 
 	{ "name": "weights_load_3768", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3768", "role": "default" }} , 
 	{ "name": "weights_load_3769", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3769", "role": "default" }} , 
 	{ "name": "weights_load_3770", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3770", "role": "default" }} , 
 	{ "name": "weights_load_3771", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3771", "role": "default" }} , 
 	{ "name": "weights_load_3772", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3772", "role": "default" }} , 
 	{ "name": "weights_load_3773", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3773", "role": "default" }} , 
 	{ "name": "weights_load_3774", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3774", "role": "default" }} , 
 	{ "name": "weights_load_3775", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3775", "role": "default" }} , 
 	{ "name": "weights_load_3776", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3776", "role": "default" }} , 
 	{ "name": "weights_load_3777", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3777", "role": "default" }} , 
 	{ "name": "weights_load_3778", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3778", "role": "default" }} , 
 	{ "name": "weights_load_3779", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3779", "role": "default" }} , 
 	{ "name": "weights_load_3780", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3780", "role": "default" }} , 
 	{ "name": "weights_load_3781", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3781", "role": "default" }} , 
 	{ "name": "weights_load_3782", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3782", "role": "default" }} , 
 	{ "name": "weights_load_3783", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3783", "role": "default" }} , 
 	{ "name": "weights_load_3784", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3784", "role": "default" }} , 
 	{ "name": "weights_load_3785", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3785", "role": "default" }} , 
 	{ "name": "weights_load_3786", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3786", "role": "default" }} , 
 	{ "name": "weights_load_3787", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3787", "role": "default" }} , 
 	{ "name": "weights_load_3788", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3788", "role": "default" }} , 
 	{ "name": "weights_load_3789", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3789", "role": "default" }} , 
 	{ "name": "weights_load_3790", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3790", "role": "default" }} , 
 	{ "name": "weights_load_3791", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3791", "role": "default" }} , 
 	{ "name": "weights_load_3792", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3792", "role": "default" }} , 
 	{ "name": "weights_load_3793", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3793", "role": "default" }} , 
 	{ "name": "weights_load_3794", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3794", "role": "default" }} , 
 	{ "name": "weights_load_3795", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3795", "role": "default" }} , 
 	{ "name": "weights_load_3796", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3796", "role": "default" }} , 
 	{ "name": "weights_load_3797", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3797", "role": "default" }} , 
 	{ "name": "weights_load_3798", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3798", "role": "default" }} , 
 	{ "name": "weights_load_3799", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3799", "role": "default" }} , 
 	{ "name": "weights_load_3800", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3800", "role": "default" }} , 
 	{ "name": "weights_load_3801", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3801", "role": "default" }} , 
 	{ "name": "weights_load_3802", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3802", "role": "default" }} , 
 	{ "name": "weights_load_3803", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3803", "role": "default" }} , 
 	{ "name": "weights_load_3804", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3804", "role": "default" }} , 
 	{ "name": "weights_load_3805", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3805", "role": "default" }} , 
 	{ "name": "weights_load_3806", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3806", "role": "default" }} , 
 	{ "name": "weights_load_3807", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3807", "role": "default" }} , 
 	{ "name": "weights_load_3808", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3808", "role": "default" }} , 
 	{ "name": "weights_load_3809", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3809", "role": "default" }} , 
 	{ "name": "weights_load_3810", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3810", "role": "default" }} , 
 	{ "name": "weights_load_3811", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3811", "role": "default" }} , 
 	{ "name": "weights_load_3812", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3812", "role": "default" }} , 
 	{ "name": "weights_load_3813", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3813", "role": "default" }} , 
 	{ "name": "weights_load_3814", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3814", "role": "default" }} , 
 	{ "name": "weights_load_3815", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3815", "role": "default" }} , 
 	{ "name": "weights_load_3816", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3816", "role": "default" }} , 
 	{ "name": "weights_load_3817", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3817", "role": "default" }} , 
 	{ "name": "weights_load_3818", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3818", "role": "default" }} , 
 	{ "name": "weights_load_3819", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3819", "role": "default" }} , 
 	{ "name": "weights_load_3820", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3820", "role": "default" }} , 
 	{ "name": "weights_load_3821", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3821", "role": "default" }} , 
 	{ "name": "weights_load_3822", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3822", "role": "default" }} , 
 	{ "name": "weights_load_3823", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3823", "role": "default" }} , 
 	{ "name": "weights_load_3824", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3824", "role": "default" }} , 
 	{ "name": "weights_load_3825", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3825", "role": "default" }} , 
 	{ "name": "weights_load_3826", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3826", "role": "default" }} , 
 	{ "name": "weights_load_3827", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3827", "role": "default" }} , 
 	{ "name": "weights_load_3828", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3828", "role": "default" }} , 
 	{ "name": "weights_load_3829", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3829", "role": "default" }} , 
 	{ "name": "weights_load_3830", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3830", "role": "default" }} , 
 	{ "name": "weights_load_3831", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3831", "role": "default" }} , 
 	{ "name": "weights_load_3832", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3832", "role": "default" }} , 
 	{ "name": "weights_load_3833", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3833", "role": "default" }} , 
 	{ "name": "weights_load_3834", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3834", "role": "default" }} , 
 	{ "name": "weights_load_3835", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3835", "role": "default" }} , 
 	{ "name": "weights_load_3836", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3836", "role": "default" }} , 
 	{ "name": "weights_load_3837", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3837", "role": "default" }} , 
 	{ "name": "weights_load_3838", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3838", "role": "default" }} , 
 	{ "name": "weights_load_3839", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3839", "role": "default" }} , 
 	{ "name": "weights_load_3840", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3840", "role": "default" }} , 
 	{ "name": "weights_load_3841", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3841", "role": "default" }} , 
 	{ "name": "weights_load_3842", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3842", "role": "default" }} , 
 	{ "name": "weights_load_3843", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3843", "role": "default" }} , 
 	{ "name": "weights_load_3844", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3844", "role": "default" }} , 
 	{ "name": "weights_load_3845", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3845", "role": "default" }} , 
 	{ "name": "weights_load_3846", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3846", "role": "default" }} , 
 	{ "name": "weights_load_3847", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3847", "role": "default" }} , 
 	{ "name": "weights_load_3848", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3848", "role": "default" }} , 
 	{ "name": "weights_load_3849", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3849", "role": "default" }} , 
 	{ "name": "weights_load_3850", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3850", "role": "default" }} , 
 	{ "name": "weights_load_3851", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3851", "role": "default" }} , 
 	{ "name": "weights_load_3852", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3852", "role": "default" }} , 
 	{ "name": "weights_load_3853", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3853", "role": "default" }} , 
 	{ "name": "weights_load_3854", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3854", "role": "default" }} , 
 	{ "name": "weights_load_3855", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3855", "role": "default" }} , 
 	{ "name": "weights_load_3856", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3856", "role": "default" }} , 
 	{ "name": "weights_load_3857", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3857", "role": "default" }} , 
 	{ "name": "weights_load_3858", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3858", "role": "default" }} , 
 	{ "name": "weights_load_3859", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3859", "role": "default" }} , 
 	{ "name": "weights_load_3860", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3860", "role": "default" }} , 
 	{ "name": "weights_load_3861", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3861", "role": "default" }} , 
 	{ "name": "weights_load_3862", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3862", "role": "default" }} , 
 	{ "name": "weights_load_3863", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3863", "role": "default" }} , 
 	{ "name": "weights_load_3864", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3864", "role": "default" }} , 
 	{ "name": "weights_load_3865", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3865", "role": "default" }} , 
 	{ "name": "weights_load_3866", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3866", "role": "default" }} , 
 	{ "name": "weights_load_3867", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3867", "role": "default" }} , 
 	{ "name": "weights_load_3868", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3868", "role": "default" }} , 
 	{ "name": "weights_load_3869", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3869", "role": "default" }} , 
 	{ "name": "weights_load_3870", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3870", "role": "default" }} , 
 	{ "name": "weights_load_3871", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3871", "role": "default" }} , 
 	{ "name": "weights_load_3872", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3872", "role": "default" }} , 
 	{ "name": "weights_load_3873", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3873", "role": "default" }} , 
 	{ "name": "weights_load_3874", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3874", "role": "default" }} , 
 	{ "name": "weights_load_3875", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3875", "role": "default" }} , 
 	{ "name": "weights_load_3876", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3876", "role": "default" }} , 
 	{ "name": "weights_load_3877", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3877", "role": "default" }} , 
 	{ "name": "weights_load_3878", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3878", "role": "default" }} , 
 	{ "name": "weights_load_3879", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3879", "role": "default" }} , 
 	{ "name": "weights_load_3880", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3880", "role": "default" }} , 
 	{ "name": "weights_load_3881", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3881", "role": "default" }} , 
 	{ "name": "weights_load_3882", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3882", "role": "default" }} , 
 	{ "name": "weights_load_3883", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3883", "role": "default" }} , 
 	{ "name": "weights_load_3884", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3884", "role": "default" }} , 
 	{ "name": "weights_load_3885", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3885", "role": "default" }} , 
 	{ "name": "weights_load_3886", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3886", "role": "default" }} , 
 	{ "name": "weights_load_3887", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3887", "role": "default" }} , 
 	{ "name": "weights_load_3888", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3888", "role": "default" }} , 
 	{ "name": "weights_load_3889", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3889", "role": "default" }} , 
 	{ "name": "weights_load_3890", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3890", "role": "default" }} , 
 	{ "name": "weights_load_3891", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3891", "role": "default" }} , 
 	{ "name": "weights_load_3892", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3892", "role": "default" }} , 
 	{ "name": "weights_load_3893", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3893", "role": "default" }} , 
 	{ "name": "weights_load_3894", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3894", "role": "default" }} , 
 	{ "name": "weights_load_3895", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3895", "role": "default" }} , 
 	{ "name": "weights_load_3896", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3896", "role": "default" }} , 
 	{ "name": "weights_load_3897", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3897", "role": "default" }} , 
 	{ "name": "weights_load_3898", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3898", "role": "default" }} , 
 	{ "name": "weights_load_3899", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3899", "role": "default" }} , 
 	{ "name": "weights_load_3900", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3900", "role": "default" }} , 
 	{ "name": "weights_load_3901", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3901", "role": "default" }} , 
 	{ "name": "weights_load_3902", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3902", "role": "default" }} , 
 	{ "name": "weights_load_3903", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3903", "role": "default" }} , 
 	{ "name": "weights_load_3904", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3904", "role": "default" }} , 
 	{ "name": "weights_load_3905", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3905", "role": "default" }} , 
 	{ "name": "weights_load_3906", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3906", "role": "default" }} , 
 	{ "name": "weights_load_3907", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3907", "role": "default" }} , 
 	{ "name": "weights_load_3908", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3908", "role": "default" }} , 
 	{ "name": "weights_load_3909", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3909", "role": "default" }} , 
 	{ "name": "weights_load_3910", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3910", "role": "default" }} , 
 	{ "name": "weights_load_3911", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3911", "role": "default" }} , 
 	{ "name": "weights_load_3912", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3912", "role": "default" }} , 
 	{ "name": "weights_load_3913", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3913", "role": "default" }} , 
 	{ "name": "weights_load_3914", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3914", "role": "default" }} , 
 	{ "name": "weights_load_3915", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3915", "role": "default" }} , 
 	{ "name": "weights_load_3916", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3916", "role": "default" }} , 
 	{ "name": "weights_load_3917", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3917", "role": "default" }} , 
 	{ "name": "weights_load_3918", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3918", "role": "default" }} , 
 	{ "name": "weights_load_3919", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3919", "role": "default" }} , 
 	{ "name": "weights_load_3920", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3920", "role": "default" }} , 
 	{ "name": "weights_load_3921", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3921", "role": "default" }} , 
 	{ "name": "weights_load_3922", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3922", "role": "default" }} , 
 	{ "name": "weights_load_3923", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3923", "role": "default" }} , 
 	{ "name": "weights_load_3924", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3924", "role": "default" }} , 
 	{ "name": "weights_load_3925", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3925", "role": "default" }} , 
 	{ "name": "weights_load_3926", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3926", "role": "default" }} , 
 	{ "name": "weights_load_3927", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3927", "role": "default" }} , 
 	{ "name": "weights_load_3928", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3928", "role": "default" }} , 
 	{ "name": "weights_load_3929", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3929", "role": "default" }} , 
 	{ "name": "weights_load_3930", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3930", "role": "default" }} , 
 	{ "name": "weights_load_3931", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3931", "role": "default" }} , 
 	{ "name": "weights_load_3932", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3932", "role": "default" }} , 
 	{ "name": "weights_load_3933", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3933", "role": "default" }} , 
 	{ "name": "weights_load_3934", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3934", "role": "default" }} , 
 	{ "name": "weights_load_3935", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3935", "role": "default" }} , 
 	{ "name": "weights_load_3936", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3936", "role": "default" }} , 
 	{ "name": "weights_load_3937", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3937", "role": "default" }} , 
 	{ "name": "weights_load_3938", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3938", "role": "default" }} , 
 	{ "name": "weights_load_3939", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3939", "role": "default" }} , 
 	{ "name": "weights_load_3940", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3940", "role": "default" }} , 
 	{ "name": "weights_load_3941", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3941", "role": "default" }} , 
 	{ "name": "weights_load_3942", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3942", "role": "default" }} , 
 	{ "name": "weights_load_3943", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3943", "role": "default" }} , 
 	{ "name": "weights_load_3944", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3944", "role": "default" }} , 
 	{ "name": "weights_load_3945", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3945", "role": "default" }} , 
 	{ "name": "weights_load_3946", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3946", "role": "default" }} , 
 	{ "name": "weights_load_3947", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3947", "role": "default" }} , 
 	{ "name": "weights_load_3948", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3948", "role": "default" }} , 
 	{ "name": "weights_load_3949", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3949", "role": "default" }} , 
 	{ "name": "weights_load_3950", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3950", "role": "default" }} , 
 	{ "name": "weights_load_3951", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3951", "role": "default" }} , 
 	{ "name": "weights_load_3952", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3952", "role": "default" }} , 
 	{ "name": "weights_load_3953", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3953", "role": "default" }} , 
 	{ "name": "weights_load_3954", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3954", "role": "default" }} , 
 	{ "name": "weights_load_3955", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3955", "role": "default" }} , 
 	{ "name": "weights_load_3956", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3956", "role": "default" }} , 
 	{ "name": "weights_load_3957", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3957", "role": "default" }} , 
 	{ "name": "weights_load_3958", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3958", "role": "default" }} , 
 	{ "name": "weights_load_3959", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3959", "role": "default" }} , 
 	{ "name": "weights_load_3960", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3960", "role": "default" }} , 
 	{ "name": "weights_load_3961", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3961", "role": "default" }} , 
 	{ "name": "weights_load_3962", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3962", "role": "default" }} , 
 	{ "name": "weights_load_3963", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3963", "role": "default" }} , 
 	{ "name": "weights_load_3964", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3964", "role": "default" }} , 
 	{ "name": "weights_load_3965", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3965", "role": "default" }} , 
 	{ "name": "weights_load_3966", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3966", "role": "default" }} , 
 	{ "name": "weights_load_3967", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3967", "role": "default" }} , 
 	{ "name": "weights_load_3968", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3968", "role": "default" }} , 
 	{ "name": "weights_load_3969", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3969", "role": "default" }} , 
 	{ "name": "weights_load_3970", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3970", "role": "default" }} , 
 	{ "name": "weights_load_3971", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3971", "role": "default" }} , 
 	{ "name": "weights_load_3972", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3972", "role": "default" }} , 
 	{ "name": "weights_load_3973", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3973", "role": "default" }} , 
 	{ "name": "weights_load_3974", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3974", "role": "default" }} , 
 	{ "name": "weights_load_3975", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3975", "role": "default" }} , 
 	{ "name": "weights_load_3976", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3976", "role": "default" }} , 
 	{ "name": "weights_load_3977", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3977", "role": "default" }} , 
 	{ "name": "weights_load_3978", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3978", "role": "default" }} , 
 	{ "name": "weights_load_3979", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3979", "role": "default" }} , 
 	{ "name": "weights_load_3980", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3980", "role": "default" }} , 
 	{ "name": "weights_load_3981", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3981", "role": "default" }} , 
 	{ "name": "weights_load_3982", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3982", "role": "default" }} , 
 	{ "name": "weights_load_3983", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3983", "role": "default" }} , 
 	{ "name": "weights_load_3984", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3984", "role": "default" }} , 
 	{ "name": "weights_load_3985", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3985", "role": "default" }} , 
 	{ "name": "weights_load_3986", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3986", "role": "default" }} , 
 	{ "name": "weights_load_3987", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3987", "role": "default" }} , 
 	{ "name": "weights_load_3988", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3988", "role": "default" }} , 
 	{ "name": "weights_load_3989", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3989", "role": "default" }} , 
 	{ "name": "weights_load_3990", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3990", "role": "default" }} , 
 	{ "name": "weights_load_3991", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3991", "role": "default" }} , 
 	{ "name": "weights_load_3992", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3992", "role": "default" }} , 
 	{ "name": "weights_load_3993", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3993", "role": "default" }} , 
 	{ "name": "weights_load_3994", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3994", "role": "default" }} , 
 	{ "name": "weights_load_3995", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3995", "role": "default" }} , 
 	{ "name": "weights_load_3996", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3996", "role": "default" }} , 
 	{ "name": "weights_load_3997", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3997", "role": "default" }} , 
 	{ "name": "weights_load_3998", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3998", "role": "default" }} , 
 	{ "name": "weights_load_3999", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_3999", "role": "default" }} , 
 	{ "name": "weights_load_4000", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4000", "role": "default" }} , 
 	{ "name": "weights_load_4001", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4001", "role": "default" }} , 
 	{ "name": "weights_load_4002", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4002", "role": "default" }} , 
 	{ "name": "weights_load_4003", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4003", "role": "default" }} , 
 	{ "name": "weights_load_4004", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4004", "role": "default" }} , 
 	{ "name": "weights_load_4005", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4005", "role": "default" }} , 
 	{ "name": "weights_load_4006", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4006", "role": "default" }} , 
 	{ "name": "weights_load_4007", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4007", "role": "default" }} , 
 	{ "name": "weights_load_4008", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4008", "role": "default" }} , 
 	{ "name": "weights_load_4009", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4009", "role": "default" }} , 
 	{ "name": "weights_load_4010", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4010", "role": "default" }} , 
 	{ "name": "weights_load_4011", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4011", "role": "default" }} , 
 	{ "name": "weights_load_4012", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4012", "role": "default" }} , 
 	{ "name": "weights_load_4013", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4013", "role": "default" }} , 
 	{ "name": "weights_load_4014", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4014", "role": "default" }} , 
 	{ "name": "weights_load_4015", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4015", "role": "default" }} , 
 	{ "name": "weights_load_4016", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4016", "role": "default" }} , 
 	{ "name": "weights_load_4017", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4017", "role": "default" }} , 
 	{ "name": "weights_load_4018", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4018", "role": "default" }} , 
 	{ "name": "weights_load_4019", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4019", "role": "default" }} , 
 	{ "name": "weights_load_4020", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4020", "role": "default" }} , 
 	{ "name": "weights_load_4021", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4021", "role": "default" }} , 
 	{ "name": "weights_load_4022", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4022", "role": "default" }} , 
 	{ "name": "weights_load_4023", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4023", "role": "default" }} , 
 	{ "name": "weights_load_4024", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4024", "role": "default" }} , 
 	{ "name": "weights_load_4025", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_load_4025", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12561", "EstimateLatencyMax" : "12561",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_64_padded_window_stream_31", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_31_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_31", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_31_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_3459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4025", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19094", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19095", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19096", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19097", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19098", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19099", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19100", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19101", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U19102", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U19103", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U19104", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U19105", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U19106", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U19107", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U19108", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U19109", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U19110", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs {
		conv2d_64_padded_window_stream_31 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_3451 {Type I LastRead 0 FirstWrite -1}
		weights_load_3452 {Type I LastRead 0 FirstWrite -1}
		weights_load_3453 {Type I LastRead 0 FirstWrite -1}
		weights_load_3454 {Type I LastRead 0 FirstWrite -1}
		weights_load_3455 {Type I LastRead 0 FirstWrite -1}
		weights_load_3456 {Type I LastRead 0 FirstWrite -1}
		weights_load_3457 {Type I LastRead 0 FirstWrite -1}
		weights_load_3458 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_31 {Type O LastRead -1 FirstWrite 16}
		weights_load_3459 {Type I LastRead 0 FirstWrite -1}
		weights_load_3460 {Type I LastRead 0 FirstWrite -1}
		weights_load_3461 {Type I LastRead 0 FirstWrite -1}
		weights_load_3462 {Type I LastRead 0 FirstWrite -1}
		weights_load_3463 {Type I LastRead 0 FirstWrite -1}
		weights_load_3464 {Type I LastRead 0 FirstWrite -1}
		weights_load_3465 {Type I LastRead 0 FirstWrite -1}
		weights_load_3466 {Type I LastRead 0 FirstWrite -1}
		weights_load_3467 {Type I LastRead 0 FirstWrite -1}
		weights_load_3468 {Type I LastRead 0 FirstWrite -1}
		weights_load_3469 {Type I LastRead 0 FirstWrite -1}
		weights_load_3470 {Type I LastRead 0 FirstWrite -1}
		weights_load_3471 {Type I LastRead 0 FirstWrite -1}
		weights_load_3472 {Type I LastRead 0 FirstWrite -1}
		weights_load_3473 {Type I LastRead 0 FirstWrite -1}
		weights_load_3474 {Type I LastRead 0 FirstWrite -1}
		weights_load_3475 {Type I LastRead 0 FirstWrite -1}
		weights_load_3476 {Type I LastRead 0 FirstWrite -1}
		weights_load_3477 {Type I LastRead 0 FirstWrite -1}
		weights_load_3478 {Type I LastRead 0 FirstWrite -1}
		weights_load_3479 {Type I LastRead 0 FirstWrite -1}
		weights_load_3480 {Type I LastRead 0 FirstWrite -1}
		weights_load_3481 {Type I LastRead 0 FirstWrite -1}
		weights_load_3482 {Type I LastRead 0 FirstWrite -1}
		weights_load_3483 {Type I LastRead 0 FirstWrite -1}
		weights_load_3484 {Type I LastRead 0 FirstWrite -1}
		weights_load_3485 {Type I LastRead 0 FirstWrite -1}
		weights_load_3486 {Type I LastRead 0 FirstWrite -1}
		weights_load_3487 {Type I LastRead 0 FirstWrite -1}
		weights_load_3488 {Type I LastRead 0 FirstWrite -1}
		weights_load_3489 {Type I LastRead 0 FirstWrite -1}
		weights_load_3490 {Type I LastRead 0 FirstWrite -1}
		weights_load_3491 {Type I LastRead 0 FirstWrite -1}
		weights_load_3492 {Type I LastRead 0 FirstWrite -1}
		weights_load_3493 {Type I LastRead 0 FirstWrite -1}
		weights_load_3494 {Type I LastRead 0 FirstWrite -1}
		weights_load_3495 {Type I LastRead 0 FirstWrite -1}
		weights_load_3496 {Type I LastRead 0 FirstWrite -1}
		weights_load_3497 {Type I LastRead 0 FirstWrite -1}
		weights_load_3498 {Type I LastRead 0 FirstWrite -1}
		weights_load_3499 {Type I LastRead 0 FirstWrite -1}
		weights_load_3500 {Type I LastRead 0 FirstWrite -1}
		weights_load_3501 {Type I LastRead 0 FirstWrite -1}
		weights_load_3502 {Type I LastRead 0 FirstWrite -1}
		weights_load_3503 {Type I LastRead 0 FirstWrite -1}
		weights_load_3504 {Type I LastRead 0 FirstWrite -1}
		weights_load_3505 {Type I LastRead 0 FirstWrite -1}
		weights_load_3506 {Type I LastRead 0 FirstWrite -1}
		weights_load_3507 {Type I LastRead 0 FirstWrite -1}
		weights_load_3508 {Type I LastRead 0 FirstWrite -1}
		weights_load_3509 {Type I LastRead 0 FirstWrite -1}
		weights_load_3510 {Type I LastRead 0 FirstWrite -1}
		weights_load_3511 {Type I LastRead 0 FirstWrite -1}
		weights_load_3512 {Type I LastRead 0 FirstWrite -1}
		weights_load_3513 {Type I LastRead 0 FirstWrite -1}
		weights_load_3514 {Type I LastRead 0 FirstWrite -1}
		weights_load_3515 {Type I LastRead 0 FirstWrite -1}
		weights_load_3516 {Type I LastRead 0 FirstWrite -1}
		weights_load_3517 {Type I LastRead 0 FirstWrite -1}
		weights_load_3518 {Type I LastRead 0 FirstWrite -1}
		weights_load_3519 {Type I LastRead 0 FirstWrite -1}
		weights_load_3520 {Type I LastRead 0 FirstWrite -1}
		weights_load_3521 {Type I LastRead 0 FirstWrite -1}
		weights_load_3522 {Type I LastRead 0 FirstWrite -1}
		weights_load_3523 {Type I LastRead 0 FirstWrite -1}
		weights_load_3524 {Type I LastRead 0 FirstWrite -1}
		weights_load_3525 {Type I LastRead 0 FirstWrite -1}
		weights_load_3526 {Type I LastRead 0 FirstWrite -1}
		weights_load_3527 {Type I LastRead 0 FirstWrite -1}
		weights_load_3528 {Type I LastRead 0 FirstWrite -1}
		weights_load_3529 {Type I LastRead 0 FirstWrite -1}
		weights_load_3530 {Type I LastRead 0 FirstWrite -1}
		weights_load_3531 {Type I LastRead 0 FirstWrite -1}
		weights_load_3532 {Type I LastRead 0 FirstWrite -1}
		weights_load_3533 {Type I LastRead 0 FirstWrite -1}
		weights_load_3534 {Type I LastRead 0 FirstWrite -1}
		weights_load_3535 {Type I LastRead 0 FirstWrite -1}
		weights_load_3536 {Type I LastRead 0 FirstWrite -1}
		weights_load_3537 {Type I LastRead 0 FirstWrite -1}
		weights_load_3538 {Type I LastRead 0 FirstWrite -1}
		weights_load_3539 {Type I LastRead 0 FirstWrite -1}
		weights_load_3540 {Type I LastRead 0 FirstWrite -1}
		weights_load_3541 {Type I LastRead 0 FirstWrite -1}
		weights_load_3542 {Type I LastRead 0 FirstWrite -1}
		weights_load_3543 {Type I LastRead 0 FirstWrite -1}
		weights_load_3544 {Type I LastRead 0 FirstWrite -1}
		weights_load_3545 {Type I LastRead 0 FirstWrite -1}
		weights_load_3546 {Type I LastRead 0 FirstWrite -1}
		weights_load_3547 {Type I LastRead 0 FirstWrite -1}
		weights_load_3548 {Type I LastRead 0 FirstWrite -1}
		weights_load_3549 {Type I LastRead 0 FirstWrite -1}
		weights_load_3550 {Type I LastRead 0 FirstWrite -1}
		weights_load_3551 {Type I LastRead 0 FirstWrite -1}
		weights_load_3552 {Type I LastRead 0 FirstWrite -1}
		weights_load_3553 {Type I LastRead 0 FirstWrite -1}
		weights_load_3554 {Type I LastRead 0 FirstWrite -1}
		weights_load_3555 {Type I LastRead 0 FirstWrite -1}
		weights_load_3556 {Type I LastRead 0 FirstWrite -1}
		weights_load_3557 {Type I LastRead 0 FirstWrite -1}
		weights_load_3558 {Type I LastRead 0 FirstWrite -1}
		weights_load_3559 {Type I LastRead 0 FirstWrite -1}
		weights_load_3560 {Type I LastRead 0 FirstWrite -1}
		weights_load_3561 {Type I LastRead 0 FirstWrite -1}
		weights_load_3562 {Type I LastRead 0 FirstWrite -1}
		weights_load_3563 {Type I LastRead 0 FirstWrite -1}
		weights_load_3564 {Type I LastRead 0 FirstWrite -1}
		weights_load_3565 {Type I LastRead 0 FirstWrite -1}
		weights_load_3566 {Type I LastRead 0 FirstWrite -1}
		weights_load_3567 {Type I LastRead 0 FirstWrite -1}
		weights_load_3568 {Type I LastRead 0 FirstWrite -1}
		weights_load_3569 {Type I LastRead 0 FirstWrite -1}
		weights_load_3570 {Type I LastRead 0 FirstWrite -1}
		weights_load_3571 {Type I LastRead 0 FirstWrite -1}
		weights_load_3572 {Type I LastRead 0 FirstWrite -1}
		weights_load_3573 {Type I LastRead 0 FirstWrite -1}
		weights_load_3574 {Type I LastRead 0 FirstWrite -1}
		weights_load_3575 {Type I LastRead 0 FirstWrite -1}
		weights_load_3576 {Type I LastRead 0 FirstWrite -1}
		weights_load_3577 {Type I LastRead 0 FirstWrite -1}
		weights_load_3578 {Type I LastRead 0 FirstWrite -1}
		weights_load_3579 {Type I LastRead 0 FirstWrite -1}
		weights_load_3580 {Type I LastRead 0 FirstWrite -1}
		weights_load_3581 {Type I LastRead 0 FirstWrite -1}
		weights_load_3582 {Type I LastRead 0 FirstWrite -1}
		weights_load_3583 {Type I LastRead 0 FirstWrite -1}
		weights_load_3584 {Type I LastRead 0 FirstWrite -1}
		weights_load_3585 {Type I LastRead 0 FirstWrite -1}
		weights_load_3586 {Type I LastRead 0 FirstWrite -1}
		weights_load_3587 {Type I LastRead 0 FirstWrite -1}
		weights_load_3588 {Type I LastRead 0 FirstWrite -1}
		weights_load_3589 {Type I LastRead 0 FirstWrite -1}
		weights_load_3590 {Type I LastRead 0 FirstWrite -1}
		weights_load_3591 {Type I LastRead 0 FirstWrite -1}
		weights_load_3592 {Type I LastRead 0 FirstWrite -1}
		weights_load_3593 {Type I LastRead 0 FirstWrite -1}
		weights_load_3594 {Type I LastRead 0 FirstWrite -1}
		weights_load_3595 {Type I LastRead 0 FirstWrite -1}
		weights_load_3596 {Type I LastRead 0 FirstWrite -1}
		weights_load_3597 {Type I LastRead 0 FirstWrite -1}
		weights_load_3598 {Type I LastRead 0 FirstWrite -1}
		weights_load_3599 {Type I LastRead 0 FirstWrite -1}
		weights_load_3600 {Type I LastRead 0 FirstWrite -1}
		weights_load_3601 {Type I LastRead 0 FirstWrite -1}
		weights_load_3602 {Type I LastRead 0 FirstWrite -1}
		weights_load_3603 {Type I LastRead 0 FirstWrite -1}
		weights_load_3604 {Type I LastRead 0 FirstWrite -1}
		weights_load_3605 {Type I LastRead 0 FirstWrite -1}
		weights_load_3606 {Type I LastRead 0 FirstWrite -1}
		weights_load_3607 {Type I LastRead 0 FirstWrite -1}
		weights_load_3608 {Type I LastRead 0 FirstWrite -1}
		weights_load_3609 {Type I LastRead 0 FirstWrite -1}
		weights_load_3610 {Type I LastRead 0 FirstWrite -1}
		weights_load_3611 {Type I LastRead 0 FirstWrite -1}
		weights_load_3612 {Type I LastRead 0 FirstWrite -1}
		weights_load_3613 {Type I LastRead 0 FirstWrite -1}
		weights_load_3614 {Type I LastRead 0 FirstWrite -1}
		weights_load_3615 {Type I LastRead 0 FirstWrite -1}
		weights_load_3616 {Type I LastRead 0 FirstWrite -1}
		weights_load_3617 {Type I LastRead 0 FirstWrite -1}
		weights_load_3618 {Type I LastRead 0 FirstWrite -1}
		weights_load_3619 {Type I LastRead 0 FirstWrite -1}
		weights_load_3620 {Type I LastRead 0 FirstWrite -1}
		weights_load_3621 {Type I LastRead 0 FirstWrite -1}
		weights_load_3622 {Type I LastRead 0 FirstWrite -1}
		weights_load_3623 {Type I LastRead 0 FirstWrite -1}
		weights_load_3624 {Type I LastRead 0 FirstWrite -1}
		weights_load_3625 {Type I LastRead 0 FirstWrite -1}
		weights_load_3626 {Type I LastRead 0 FirstWrite -1}
		weights_load_3627 {Type I LastRead 0 FirstWrite -1}
		weights_load_3628 {Type I LastRead 0 FirstWrite -1}
		weights_load_3629 {Type I LastRead 0 FirstWrite -1}
		weights_load_3630 {Type I LastRead 0 FirstWrite -1}
		weights_load_3631 {Type I LastRead 0 FirstWrite -1}
		weights_load_3632 {Type I LastRead 0 FirstWrite -1}
		weights_load_3633 {Type I LastRead 0 FirstWrite -1}
		weights_load_3634 {Type I LastRead 0 FirstWrite -1}
		weights_load_3635 {Type I LastRead 0 FirstWrite -1}
		weights_load_3636 {Type I LastRead 0 FirstWrite -1}
		weights_load_3637 {Type I LastRead 0 FirstWrite -1}
		weights_load_3638 {Type I LastRead 0 FirstWrite -1}
		weights_load_3639 {Type I LastRead 0 FirstWrite -1}
		weights_load_3640 {Type I LastRead 0 FirstWrite -1}
		weights_load_3641 {Type I LastRead 0 FirstWrite -1}
		weights_load_3642 {Type I LastRead 0 FirstWrite -1}
		weights_load_3643 {Type I LastRead 0 FirstWrite -1}
		weights_load_3644 {Type I LastRead 0 FirstWrite -1}
		weights_load_3645 {Type I LastRead 0 FirstWrite -1}
		weights_load_3646 {Type I LastRead 0 FirstWrite -1}
		weights_load_3647 {Type I LastRead 0 FirstWrite -1}
		weights_load_3648 {Type I LastRead 0 FirstWrite -1}
		weights_load_3649 {Type I LastRead 0 FirstWrite -1}
		weights_load_3650 {Type I LastRead 0 FirstWrite -1}
		weights_load_3651 {Type I LastRead 0 FirstWrite -1}
		weights_load_3652 {Type I LastRead 0 FirstWrite -1}
		weights_load_3653 {Type I LastRead 0 FirstWrite -1}
		weights_load_3654 {Type I LastRead 0 FirstWrite -1}
		weights_load_3655 {Type I LastRead 0 FirstWrite -1}
		weights_load_3656 {Type I LastRead 0 FirstWrite -1}
		weights_load_3657 {Type I LastRead 0 FirstWrite -1}
		weights_load_3658 {Type I LastRead 0 FirstWrite -1}
		weights_load_3659 {Type I LastRead 0 FirstWrite -1}
		weights_load_3660 {Type I LastRead 0 FirstWrite -1}
		weights_load_3661 {Type I LastRead 0 FirstWrite -1}
		weights_load_3662 {Type I LastRead 0 FirstWrite -1}
		weights_load_3663 {Type I LastRead 0 FirstWrite -1}
		weights_load_3664 {Type I LastRead 0 FirstWrite -1}
		weights_load_3665 {Type I LastRead 0 FirstWrite -1}
		weights_load_3666 {Type I LastRead 0 FirstWrite -1}
		weights_load_3667 {Type I LastRead 0 FirstWrite -1}
		weights_load_3668 {Type I LastRead 0 FirstWrite -1}
		weights_load_3669 {Type I LastRead 0 FirstWrite -1}
		weights_load_3670 {Type I LastRead 0 FirstWrite -1}
		weights_load_3671 {Type I LastRead 0 FirstWrite -1}
		weights_load_3672 {Type I LastRead 0 FirstWrite -1}
		weights_load_3673 {Type I LastRead 0 FirstWrite -1}
		weights_load_3674 {Type I LastRead 0 FirstWrite -1}
		weights_load_3675 {Type I LastRead 0 FirstWrite -1}
		weights_load_3676 {Type I LastRead 0 FirstWrite -1}
		weights_load_3677 {Type I LastRead 0 FirstWrite -1}
		weights_load_3678 {Type I LastRead 0 FirstWrite -1}
		weights_load_3679 {Type I LastRead 0 FirstWrite -1}
		weights_load_3680 {Type I LastRead 0 FirstWrite -1}
		weights_load_3681 {Type I LastRead 0 FirstWrite -1}
		weights_load_3682 {Type I LastRead 0 FirstWrite -1}
		weights_load_3683 {Type I LastRead 0 FirstWrite -1}
		weights_load_3684 {Type I LastRead 0 FirstWrite -1}
		weights_load_3685 {Type I LastRead 0 FirstWrite -1}
		weights_load_3686 {Type I LastRead 0 FirstWrite -1}
		weights_load_3687 {Type I LastRead 0 FirstWrite -1}
		weights_load_3688 {Type I LastRead 0 FirstWrite -1}
		weights_load_3689 {Type I LastRead 0 FirstWrite -1}
		weights_load_3690 {Type I LastRead 0 FirstWrite -1}
		weights_load_3691 {Type I LastRead 0 FirstWrite -1}
		weights_load_3692 {Type I LastRead 0 FirstWrite -1}
		weights_load_3693 {Type I LastRead 0 FirstWrite -1}
		weights_load_3694 {Type I LastRead 0 FirstWrite -1}
		weights_load_3695 {Type I LastRead 0 FirstWrite -1}
		weights_load_3696 {Type I LastRead 0 FirstWrite -1}
		weights_load_3697 {Type I LastRead 0 FirstWrite -1}
		weights_load_3698 {Type I LastRead 0 FirstWrite -1}
		weights_load_3699 {Type I LastRead 0 FirstWrite -1}
		weights_load_3700 {Type I LastRead 0 FirstWrite -1}
		weights_load_3701 {Type I LastRead 0 FirstWrite -1}
		weights_load_3702 {Type I LastRead 0 FirstWrite -1}
		weights_load_3703 {Type I LastRead 0 FirstWrite -1}
		weights_load_3704 {Type I LastRead 0 FirstWrite -1}
		weights_load_3705 {Type I LastRead 0 FirstWrite -1}
		weights_load_3706 {Type I LastRead 0 FirstWrite -1}
		weights_load_3707 {Type I LastRead 0 FirstWrite -1}
		weights_load_3708 {Type I LastRead 0 FirstWrite -1}
		weights_load_3709 {Type I LastRead 0 FirstWrite -1}
		weights_load_3710 {Type I LastRead 0 FirstWrite -1}
		weights_load_3711 {Type I LastRead 0 FirstWrite -1}
		weights_load_3712 {Type I LastRead 0 FirstWrite -1}
		weights_load_3713 {Type I LastRead 0 FirstWrite -1}
		weights_load_3714 {Type I LastRead 0 FirstWrite -1}
		weights_load_3715 {Type I LastRead 0 FirstWrite -1}
		weights_load_3716 {Type I LastRead 0 FirstWrite -1}
		weights_load_3717 {Type I LastRead 0 FirstWrite -1}
		weights_load_3718 {Type I LastRead 0 FirstWrite -1}
		weights_load_3719 {Type I LastRead 0 FirstWrite -1}
		weights_load_3720 {Type I LastRead 0 FirstWrite -1}
		weights_load_3721 {Type I LastRead 0 FirstWrite -1}
		weights_load_3722 {Type I LastRead 0 FirstWrite -1}
		weights_load_3723 {Type I LastRead 0 FirstWrite -1}
		weights_load_3724 {Type I LastRead 0 FirstWrite -1}
		weights_load_3725 {Type I LastRead 0 FirstWrite -1}
		weights_load_3726 {Type I LastRead 0 FirstWrite -1}
		weights_load_3727 {Type I LastRead 0 FirstWrite -1}
		weights_load_3728 {Type I LastRead 0 FirstWrite -1}
		weights_load_3729 {Type I LastRead 0 FirstWrite -1}
		weights_load_3730 {Type I LastRead 0 FirstWrite -1}
		weights_load_3731 {Type I LastRead 0 FirstWrite -1}
		weights_load_3732 {Type I LastRead 0 FirstWrite -1}
		weights_load_3733 {Type I LastRead 0 FirstWrite -1}
		weights_load_3734 {Type I LastRead 0 FirstWrite -1}
		weights_load_3735 {Type I LastRead 0 FirstWrite -1}
		weights_load_3736 {Type I LastRead 0 FirstWrite -1}
		weights_load_3737 {Type I LastRead 0 FirstWrite -1}
		weights_load_3738 {Type I LastRead 0 FirstWrite -1}
		weights_load_3739 {Type I LastRead 0 FirstWrite -1}
		weights_load_3740 {Type I LastRead 0 FirstWrite -1}
		weights_load_3741 {Type I LastRead 0 FirstWrite -1}
		weights_load_3742 {Type I LastRead 0 FirstWrite -1}
		weights_load_3743 {Type I LastRead 0 FirstWrite -1}
		weights_load_3744 {Type I LastRead 0 FirstWrite -1}
		weights_load_3745 {Type I LastRead 0 FirstWrite -1}
		weights_load_3746 {Type I LastRead 0 FirstWrite -1}
		weights_load_3747 {Type I LastRead 0 FirstWrite -1}
		weights_load_3748 {Type I LastRead 0 FirstWrite -1}
		weights_load_3749 {Type I LastRead 0 FirstWrite -1}
		weights_load_3750 {Type I LastRead 0 FirstWrite -1}
		weights_load_3751 {Type I LastRead 0 FirstWrite -1}
		weights_load_3752 {Type I LastRead 0 FirstWrite -1}
		weights_load_3753 {Type I LastRead 0 FirstWrite -1}
		weights_load_3754 {Type I LastRead 0 FirstWrite -1}
		weights_load_3755 {Type I LastRead 0 FirstWrite -1}
		weights_load_3756 {Type I LastRead 0 FirstWrite -1}
		weights_load_3757 {Type I LastRead 0 FirstWrite -1}
		weights_load_3758 {Type I LastRead 0 FirstWrite -1}
		weights_load_3759 {Type I LastRead 0 FirstWrite -1}
		weights_load_3760 {Type I LastRead 0 FirstWrite -1}
		weights_load_3761 {Type I LastRead 0 FirstWrite -1}
		weights_load_3762 {Type I LastRead 0 FirstWrite -1}
		weights_load_3763 {Type I LastRead 0 FirstWrite -1}
		weights_load_3764 {Type I LastRead 0 FirstWrite -1}
		weights_load_3765 {Type I LastRead 0 FirstWrite -1}
		weights_load_3766 {Type I LastRead 0 FirstWrite -1}
		weights_load_3767 {Type I LastRead 0 FirstWrite -1}
		weights_load_3768 {Type I LastRead 0 FirstWrite -1}
		weights_load_3769 {Type I LastRead 0 FirstWrite -1}
		weights_load_3770 {Type I LastRead 0 FirstWrite -1}
		weights_load_3771 {Type I LastRead 0 FirstWrite -1}
		weights_load_3772 {Type I LastRead 0 FirstWrite -1}
		weights_load_3773 {Type I LastRead 0 FirstWrite -1}
		weights_load_3774 {Type I LastRead 0 FirstWrite -1}
		weights_load_3775 {Type I LastRead 0 FirstWrite -1}
		weights_load_3776 {Type I LastRead 0 FirstWrite -1}
		weights_load_3777 {Type I LastRead 0 FirstWrite -1}
		weights_load_3778 {Type I LastRead 0 FirstWrite -1}
		weights_load_3779 {Type I LastRead 0 FirstWrite -1}
		weights_load_3780 {Type I LastRead 0 FirstWrite -1}
		weights_load_3781 {Type I LastRead 0 FirstWrite -1}
		weights_load_3782 {Type I LastRead 0 FirstWrite -1}
		weights_load_3783 {Type I LastRead 0 FirstWrite -1}
		weights_load_3784 {Type I LastRead 0 FirstWrite -1}
		weights_load_3785 {Type I LastRead 0 FirstWrite -1}
		weights_load_3786 {Type I LastRead 0 FirstWrite -1}
		weights_load_3787 {Type I LastRead 0 FirstWrite -1}
		weights_load_3788 {Type I LastRead 0 FirstWrite -1}
		weights_load_3789 {Type I LastRead 0 FirstWrite -1}
		weights_load_3790 {Type I LastRead 0 FirstWrite -1}
		weights_load_3791 {Type I LastRead 0 FirstWrite -1}
		weights_load_3792 {Type I LastRead 0 FirstWrite -1}
		weights_load_3793 {Type I LastRead 0 FirstWrite -1}
		weights_load_3794 {Type I LastRead 0 FirstWrite -1}
		weights_load_3795 {Type I LastRead 0 FirstWrite -1}
		weights_load_3796 {Type I LastRead 0 FirstWrite -1}
		weights_load_3797 {Type I LastRead 0 FirstWrite -1}
		weights_load_3798 {Type I LastRead 0 FirstWrite -1}
		weights_load_3799 {Type I LastRead 0 FirstWrite -1}
		weights_load_3800 {Type I LastRead 0 FirstWrite -1}
		weights_load_3801 {Type I LastRead 0 FirstWrite -1}
		weights_load_3802 {Type I LastRead 0 FirstWrite -1}
		weights_load_3803 {Type I LastRead 0 FirstWrite -1}
		weights_load_3804 {Type I LastRead 0 FirstWrite -1}
		weights_load_3805 {Type I LastRead 0 FirstWrite -1}
		weights_load_3806 {Type I LastRead 0 FirstWrite -1}
		weights_load_3807 {Type I LastRead 0 FirstWrite -1}
		weights_load_3808 {Type I LastRead 0 FirstWrite -1}
		weights_load_3809 {Type I LastRead 0 FirstWrite -1}
		weights_load_3810 {Type I LastRead 0 FirstWrite -1}
		weights_load_3811 {Type I LastRead 0 FirstWrite -1}
		weights_load_3812 {Type I LastRead 0 FirstWrite -1}
		weights_load_3813 {Type I LastRead 0 FirstWrite -1}
		weights_load_3814 {Type I LastRead 0 FirstWrite -1}
		weights_load_3815 {Type I LastRead 0 FirstWrite -1}
		weights_load_3816 {Type I LastRead 0 FirstWrite -1}
		weights_load_3817 {Type I LastRead 0 FirstWrite -1}
		weights_load_3818 {Type I LastRead 0 FirstWrite -1}
		weights_load_3819 {Type I LastRead 0 FirstWrite -1}
		weights_load_3820 {Type I LastRead 0 FirstWrite -1}
		weights_load_3821 {Type I LastRead 0 FirstWrite -1}
		weights_load_3822 {Type I LastRead 0 FirstWrite -1}
		weights_load_3823 {Type I LastRead 0 FirstWrite -1}
		weights_load_3824 {Type I LastRead 0 FirstWrite -1}
		weights_load_3825 {Type I LastRead 0 FirstWrite -1}
		weights_load_3826 {Type I LastRead 0 FirstWrite -1}
		weights_load_3827 {Type I LastRead 0 FirstWrite -1}
		weights_load_3828 {Type I LastRead 0 FirstWrite -1}
		weights_load_3829 {Type I LastRead 0 FirstWrite -1}
		weights_load_3830 {Type I LastRead 0 FirstWrite -1}
		weights_load_3831 {Type I LastRead 0 FirstWrite -1}
		weights_load_3832 {Type I LastRead 0 FirstWrite -1}
		weights_load_3833 {Type I LastRead 0 FirstWrite -1}
		weights_load_3834 {Type I LastRead 0 FirstWrite -1}
		weights_load_3835 {Type I LastRead 0 FirstWrite -1}
		weights_load_3836 {Type I LastRead 0 FirstWrite -1}
		weights_load_3837 {Type I LastRead 0 FirstWrite -1}
		weights_load_3838 {Type I LastRead 0 FirstWrite -1}
		weights_load_3839 {Type I LastRead 0 FirstWrite -1}
		weights_load_3840 {Type I LastRead 0 FirstWrite -1}
		weights_load_3841 {Type I LastRead 0 FirstWrite -1}
		weights_load_3842 {Type I LastRead 0 FirstWrite -1}
		weights_load_3843 {Type I LastRead 0 FirstWrite -1}
		weights_load_3844 {Type I LastRead 0 FirstWrite -1}
		weights_load_3845 {Type I LastRead 0 FirstWrite -1}
		weights_load_3846 {Type I LastRead 0 FirstWrite -1}
		weights_load_3847 {Type I LastRead 0 FirstWrite -1}
		weights_load_3848 {Type I LastRead 0 FirstWrite -1}
		weights_load_3849 {Type I LastRead 0 FirstWrite -1}
		weights_load_3850 {Type I LastRead 0 FirstWrite -1}
		weights_load_3851 {Type I LastRead 0 FirstWrite -1}
		weights_load_3852 {Type I LastRead 0 FirstWrite -1}
		weights_load_3853 {Type I LastRead 0 FirstWrite -1}
		weights_load_3854 {Type I LastRead 0 FirstWrite -1}
		weights_load_3855 {Type I LastRead 0 FirstWrite -1}
		weights_load_3856 {Type I LastRead 0 FirstWrite -1}
		weights_load_3857 {Type I LastRead 0 FirstWrite -1}
		weights_load_3858 {Type I LastRead 0 FirstWrite -1}
		weights_load_3859 {Type I LastRead 0 FirstWrite -1}
		weights_load_3860 {Type I LastRead 0 FirstWrite -1}
		weights_load_3861 {Type I LastRead 0 FirstWrite -1}
		weights_load_3862 {Type I LastRead 0 FirstWrite -1}
		weights_load_3863 {Type I LastRead 0 FirstWrite -1}
		weights_load_3864 {Type I LastRead 0 FirstWrite -1}
		weights_load_3865 {Type I LastRead 0 FirstWrite -1}
		weights_load_3866 {Type I LastRead 0 FirstWrite -1}
		weights_load_3867 {Type I LastRead 0 FirstWrite -1}
		weights_load_3868 {Type I LastRead 0 FirstWrite -1}
		weights_load_3869 {Type I LastRead 0 FirstWrite -1}
		weights_load_3870 {Type I LastRead 0 FirstWrite -1}
		weights_load_3871 {Type I LastRead 0 FirstWrite -1}
		weights_load_3872 {Type I LastRead 0 FirstWrite -1}
		weights_load_3873 {Type I LastRead 0 FirstWrite -1}
		weights_load_3874 {Type I LastRead 0 FirstWrite -1}
		weights_load_3875 {Type I LastRead 0 FirstWrite -1}
		weights_load_3876 {Type I LastRead 0 FirstWrite -1}
		weights_load_3877 {Type I LastRead 0 FirstWrite -1}
		weights_load_3878 {Type I LastRead 0 FirstWrite -1}
		weights_load_3879 {Type I LastRead 0 FirstWrite -1}
		weights_load_3880 {Type I LastRead 0 FirstWrite -1}
		weights_load_3881 {Type I LastRead 0 FirstWrite -1}
		weights_load_3882 {Type I LastRead 0 FirstWrite -1}
		weights_load_3883 {Type I LastRead 0 FirstWrite -1}
		weights_load_3884 {Type I LastRead 0 FirstWrite -1}
		weights_load_3885 {Type I LastRead 0 FirstWrite -1}
		weights_load_3886 {Type I LastRead 0 FirstWrite -1}
		weights_load_3887 {Type I LastRead 0 FirstWrite -1}
		weights_load_3888 {Type I LastRead 0 FirstWrite -1}
		weights_load_3889 {Type I LastRead 0 FirstWrite -1}
		weights_load_3890 {Type I LastRead 0 FirstWrite -1}
		weights_load_3891 {Type I LastRead 0 FirstWrite -1}
		weights_load_3892 {Type I LastRead 0 FirstWrite -1}
		weights_load_3893 {Type I LastRead 0 FirstWrite -1}
		weights_load_3894 {Type I LastRead 0 FirstWrite -1}
		weights_load_3895 {Type I LastRead 0 FirstWrite -1}
		weights_load_3896 {Type I LastRead 0 FirstWrite -1}
		weights_load_3897 {Type I LastRead 0 FirstWrite -1}
		weights_load_3898 {Type I LastRead 0 FirstWrite -1}
		weights_load_3899 {Type I LastRead 0 FirstWrite -1}
		weights_load_3900 {Type I LastRead 0 FirstWrite -1}
		weights_load_3901 {Type I LastRead 0 FirstWrite -1}
		weights_load_3902 {Type I LastRead 0 FirstWrite -1}
		weights_load_3903 {Type I LastRead 0 FirstWrite -1}
		weights_load_3904 {Type I LastRead 0 FirstWrite -1}
		weights_load_3905 {Type I LastRead 0 FirstWrite -1}
		weights_load_3906 {Type I LastRead 0 FirstWrite -1}
		weights_load_3907 {Type I LastRead 0 FirstWrite -1}
		weights_load_3908 {Type I LastRead 0 FirstWrite -1}
		weights_load_3909 {Type I LastRead 0 FirstWrite -1}
		weights_load_3910 {Type I LastRead 0 FirstWrite -1}
		weights_load_3911 {Type I LastRead 0 FirstWrite -1}
		weights_load_3912 {Type I LastRead 0 FirstWrite -1}
		weights_load_3913 {Type I LastRead 0 FirstWrite -1}
		weights_load_3914 {Type I LastRead 0 FirstWrite -1}
		weights_load_3915 {Type I LastRead 0 FirstWrite -1}
		weights_load_3916 {Type I LastRead 0 FirstWrite -1}
		weights_load_3917 {Type I LastRead 0 FirstWrite -1}
		weights_load_3918 {Type I LastRead 0 FirstWrite -1}
		weights_load_3919 {Type I LastRead 0 FirstWrite -1}
		weights_load_3920 {Type I LastRead 0 FirstWrite -1}
		weights_load_3921 {Type I LastRead 0 FirstWrite -1}
		weights_load_3922 {Type I LastRead 0 FirstWrite -1}
		weights_load_3923 {Type I LastRead 0 FirstWrite -1}
		weights_load_3924 {Type I LastRead 0 FirstWrite -1}
		weights_load_3925 {Type I LastRead 0 FirstWrite -1}
		weights_load_3926 {Type I LastRead 0 FirstWrite -1}
		weights_load_3927 {Type I LastRead 0 FirstWrite -1}
		weights_load_3928 {Type I LastRead 0 FirstWrite -1}
		weights_load_3929 {Type I LastRead 0 FirstWrite -1}
		weights_load_3930 {Type I LastRead 0 FirstWrite -1}
		weights_load_3931 {Type I LastRead 0 FirstWrite -1}
		weights_load_3932 {Type I LastRead 0 FirstWrite -1}
		weights_load_3933 {Type I LastRead 0 FirstWrite -1}
		weights_load_3934 {Type I LastRead 0 FirstWrite -1}
		weights_load_3935 {Type I LastRead 0 FirstWrite -1}
		weights_load_3936 {Type I LastRead 0 FirstWrite -1}
		weights_load_3937 {Type I LastRead 0 FirstWrite -1}
		weights_load_3938 {Type I LastRead 0 FirstWrite -1}
		weights_load_3939 {Type I LastRead 0 FirstWrite -1}
		weights_load_3940 {Type I LastRead 0 FirstWrite -1}
		weights_load_3941 {Type I LastRead 0 FirstWrite -1}
		weights_load_3942 {Type I LastRead 0 FirstWrite -1}
		weights_load_3943 {Type I LastRead 0 FirstWrite -1}
		weights_load_3944 {Type I LastRead 0 FirstWrite -1}
		weights_load_3945 {Type I LastRead 0 FirstWrite -1}
		weights_load_3946 {Type I LastRead 0 FirstWrite -1}
		weights_load_3947 {Type I LastRead 0 FirstWrite -1}
		weights_load_3948 {Type I LastRead 0 FirstWrite -1}
		weights_load_3949 {Type I LastRead 0 FirstWrite -1}
		weights_load_3950 {Type I LastRead 0 FirstWrite -1}
		weights_load_3951 {Type I LastRead 0 FirstWrite -1}
		weights_load_3952 {Type I LastRead 0 FirstWrite -1}
		weights_load_3953 {Type I LastRead 0 FirstWrite -1}
		weights_load_3954 {Type I LastRead 0 FirstWrite -1}
		weights_load_3955 {Type I LastRead 0 FirstWrite -1}
		weights_load_3956 {Type I LastRead 0 FirstWrite -1}
		weights_load_3957 {Type I LastRead 0 FirstWrite -1}
		weights_load_3958 {Type I LastRead 0 FirstWrite -1}
		weights_load_3959 {Type I LastRead 0 FirstWrite -1}
		weights_load_3960 {Type I LastRead 0 FirstWrite -1}
		weights_load_3961 {Type I LastRead 0 FirstWrite -1}
		weights_load_3962 {Type I LastRead 0 FirstWrite -1}
		weights_load_3963 {Type I LastRead 0 FirstWrite -1}
		weights_load_3964 {Type I LastRead 0 FirstWrite -1}
		weights_load_3965 {Type I LastRead 0 FirstWrite -1}
		weights_load_3966 {Type I LastRead 0 FirstWrite -1}
		weights_load_3967 {Type I LastRead 0 FirstWrite -1}
		weights_load_3968 {Type I LastRead 0 FirstWrite -1}
		weights_load_3969 {Type I LastRead 0 FirstWrite -1}
		weights_load_3970 {Type I LastRead 0 FirstWrite -1}
		weights_load_3971 {Type I LastRead 0 FirstWrite -1}
		weights_load_3972 {Type I LastRead 0 FirstWrite -1}
		weights_load_3973 {Type I LastRead 0 FirstWrite -1}
		weights_load_3974 {Type I LastRead 0 FirstWrite -1}
		weights_load_3975 {Type I LastRead 0 FirstWrite -1}
		weights_load_3976 {Type I LastRead 0 FirstWrite -1}
		weights_load_3977 {Type I LastRead 0 FirstWrite -1}
		weights_load_3978 {Type I LastRead 0 FirstWrite -1}
		weights_load_3979 {Type I LastRead 0 FirstWrite -1}
		weights_load_3980 {Type I LastRead 0 FirstWrite -1}
		weights_load_3981 {Type I LastRead 0 FirstWrite -1}
		weights_load_3982 {Type I LastRead 0 FirstWrite -1}
		weights_load_3983 {Type I LastRead 0 FirstWrite -1}
		weights_load_3984 {Type I LastRead 0 FirstWrite -1}
		weights_load_3985 {Type I LastRead 0 FirstWrite -1}
		weights_load_3986 {Type I LastRead 0 FirstWrite -1}
		weights_load_3987 {Type I LastRead 0 FirstWrite -1}
		weights_load_3988 {Type I LastRead 0 FirstWrite -1}
		weights_load_3989 {Type I LastRead 0 FirstWrite -1}
		weights_load_3990 {Type I LastRead 0 FirstWrite -1}
		weights_load_3991 {Type I LastRead 0 FirstWrite -1}
		weights_load_3992 {Type I LastRead 0 FirstWrite -1}
		weights_load_3993 {Type I LastRead 0 FirstWrite -1}
		weights_load_3994 {Type I LastRead 0 FirstWrite -1}
		weights_load_3995 {Type I LastRead 0 FirstWrite -1}
		weights_load_3996 {Type I LastRead 0 FirstWrite -1}
		weights_load_3997 {Type I LastRead 0 FirstWrite -1}
		weights_load_3998 {Type I LastRead 0 FirstWrite -1}
		weights_load_3999 {Type I LastRead 0 FirstWrite -1}
		weights_load_4000 {Type I LastRead 0 FirstWrite -1}
		weights_load_4001 {Type I LastRead 0 FirstWrite -1}
		weights_load_4002 {Type I LastRead 0 FirstWrite -1}
		weights_load_4003 {Type I LastRead 0 FirstWrite -1}
		weights_load_4004 {Type I LastRead 0 FirstWrite -1}
		weights_load_4005 {Type I LastRead 0 FirstWrite -1}
		weights_load_4006 {Type I LastRead 0 FirstWrite -1}
		weights_load_4007 {Type I LastRead 0 FirstWrite -1}
		weights_load_4008 {Type I LastRead 0 FirstWrite -1}
		weights_load_4009 {Type I LastRead 0 FirstWrite -1}
		weights_load_4010 {Type I LastRead 0 FirstWrite -1}
		weights_load_4011 {Type I LastRead 0 FirstWrite -1}
		weights_load_4012 {Type I LastRead 0 FirstWrite -1}
		weights_load_4013 {Type I LastRead 0 FirstWrite -1}
		weights_load_4014 {Type I LastRead 0 FirstWrite -1}
		weights_load_4015 {Type I LastRead 0 FirstWrite -1}
		weights_load_4016 {Type I LastRead 0 FirstWrite -1}
		weights_load_4017 {Type I LastRead 0 FirstWrite -1}
		weights_load_4018 {Type I LastRead 0 FirstWrite -1}
		weights_load_4019 {Type I LastRead 0 FirstWrite -1}
		weights_load_4020 {Type I LastRead 0 FirstWrite -1}
		weights_load_4021 {Type I LastRead 0 FirstWrite -1}
		weights_load_4022 {Type I LastRead 0 FirstWrite -1}
		weights_load_4023 {Type I LastRead 0 FirstWrite -1}
		weights_load_4024 {Type I LastRead 0 FirstWrite -1}
		weights_load_4025 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12561", "Max" : "12561"}
	, {"Name" : "Interval", "Min" : "12561", "Max" : "12561"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_31 { ap_fifo {  { conv2d_64_padded_window_stream_31_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_31_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_31_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_31_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_31_read fifo_data 1 1 } } }
	weights_load { ap_stable {  { weights_load in_data 0 32 } } }
	weights_load_3451 { ap_stable {  { weights_load_3451 in_data 0 32 } } }
	weights_load_3452 { ap_stable {  { weights_load_3452 in_data 0 32 } } }
	weights_load_3453 { ap_stable {  { weights_load_3453 in_data 0 32 } } }
	weights_load_3454 { ap_stable {  { weights_load_3454 in_data 0 32 } } }
	weights_load_3455 { ap_stable {  { weights_load_3455 in_data 0 32 } } }
	weights_load_3456 { ap_stable {  { weights_load_3456 in_data 0 32 } } }
	weights_load_3457 { ap_stable {  { weights_load_3457 in_data 0 32 } } }
	weights_load_3458 { ap_stable {  { weights_load_3458 in_data 0 32 } } }
	in_channel_map_stream_31 { ap_fifo {  { in_channel_map_stream_31_din fifo_port_we 1 32 }  { in_channel_map_stream_31_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_31_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_31_full_n fifo_status 0 1 }  { in_channel_map_stream_31_write fifo_data 1 1 } } }
	weights_load_3459 { ap_stable {  { weights_load_3459 in_data 0 32 } } }
	weights_load_3460 { ap_stable {  { weights_load_3460 in_data 0 32 } } }
	weights_load_3461 { ap_stable {  { weights_load_3461 in_data 0 32 } } }
	weights_load_3462 { ap_stable {  { weights_load_3462 in_data 0 32 } } }
	weights_load_3463 { ap_stable {  { weights_load_3463 in_data 0 32 } } }
	weights_load_3464 { ap_stable {  { weights_load_3464 in_data 0 32 } } }
	weights_load_3465 { ap_stable {  { weights_load_3465 in_data 0 32 } } }
	weights_load_3466 { ap_stable {  { weights_load_3466 in_data 0 32 } } }
	weights_load_3467 { ap_stable {  { weights_load_3467 in_data 0 32 } } }
	weights_load_3468 { ap_stable {  { weights_load_3468 in_data 0 32 } } }
	weights_load_3469 { ap_stable {  { weights_load_3469 in_data 0 32 } } }
	weights_load_3470 { ap_stable {  { weights_load_3470 in_data 0 32 } } }
	weights_load_3471 { ap_stable {  { weights_load_3471 in_data 0 32 } } }
	weights_load_3472 { ap_stable {  { weights_load_3472 in_data 0 32 } } }
	weights_load_3473 { ap_stable {  { weights_load_3473 in_data 0 32 } } }
	weights_load_3474 { ap_stable {  { weights_load_3474 in_data 0 32 } } }
	weights_load_3475 { ap_stable {  { weights_load_3475 in_data 0 32 } } }
	weights_load_3476 { ap_stable {  { weights_load_3476 in_data 0 32 } } }
	weights_load_3477 { ap_stable {  { weights_load_3477 in_data 0 32 } } }
	weights_load_3478 { ap_stable {  { weights_load_3478 in_data 0 32 } } }
	weights_load_3479 { ap_stable {  { weights_load_3479 in_data 0 32 } } }
	weights_load_3480 { ap_stable {  { weights_load_3480 in_data 0 32 } } }
	weights_load_3481 { ap_stable {  { weights_load_3481 in_data 0 32 } } }
	weights_load_3482 { ap_stable {  { weights_load_3482 in_data 0 32 } } }
	weights_load_3483 { ap_stable {  { weights_load_3483 in_data 0 32 } } }
	weights_load_3484 { ap_stable {  { weights_load_3484 in_data 0 32 } } }
	weights_load_3485 { ap_stable {  { weights_load_3485 in_data 0 32 } } }
	weights_load_3486 { ap_stable {  { weights_load_3486 in_data 0 32 } } }
	weights_load_3487 { ap_stable {  { weights_load_3487 in_data 0 32 } } }
	weights_load_3488 { ap_stable {  { weights_load_3488 in_data 0 32 } } }
	weights_load_3489 { ap_stable {  { weights_load_3489 in_data 0 32 } } }
	weights_load_3490 { ap_stable {  { weights_load_3490 in_data 0 32 } } }
	weights_load_3491 { ap_stable {  { weights_load_3491 in_data 0 32 } } }
	weights_load_3492 { ap_stable {  { weights_load_3492 in_data 0 32 } } }
	weights_load_3493 { ap_stable {  { weights_load_3493 in_data 0 32 } } }
	weights_load_3494 { ap_stable {  { weights_load_3494 in_data 0 32 } } }
	weights_load_3495 { ap_stable {  { weights_load_3495 in_data 0 32 } } }
	weights_load_3496 { ap_stable {  { weights_load_3496 in_data 0 32 } } }
	weights_load_3497 { ap_stable {  { weights_load_3497 in_data 0 32 } } }
	weights_load_3498 { ap_stable {  { weights_load_3498 in_data 0 32 } } }
	weights_load_3499 { ap_stable {  { weights_load_3499 in_data 0 32 } } }
	weights_load_3500 { ap_stable {  { weights_load_3500 in_data 0 32 } } }
	weights_load_3501 { ap_stable {  { weights_load_3501 in_data 0 32 } } }
	weights_load_3502 { ap_stable {  { weights_load_3502 in_data 0 32 } } }
	weights_load_3503 { ap_stable {  { weights_load_3503 in_data 0 32 } } }
	weights_load_3504 { ap_stable {  { weights_load_3504 in_data 0 32 } } }
	weights_load_3505 { ap_stable {  { weights_load_3505 in_data 0 32 } } }
	weights_load_3506 { ap_stable {  { weights_load_3506 in_data 0 32 } } }
	weights_load_3507 { ap_stable {  { weights_load_3507 in_data 0 32 } } }
	weights_load_3508 { ap_stable {  { weights_load_3508 in_data 0 32 } } }
	weights_load_3509 { ap_stable {  { weights_load_3509 in_data 0 32 } } }
	weights_load_3510 { ap_stable {  { weights_load_3510 in_data 0 32 } } }
	weights_load_3511 { ap_stable {  { weights_load_3511 in_data 0 32 } } }
	weights_load_3512 { ap_stable {  { weights_load_3512 in_data 0 32 } } }
	weights_load_3513 { ap_stable {  { weights_load_3513 in_data 0 32 } } }
	weights_load_3514 { ap_stable {  { weights_load_3514 in_data 0 32 } } }
	weights_load_3515 { ap_stable {  { weights_load_3515 in_data 0 32 } } }
	weights_load_3516 { ap_stable {  { weights_load_3516 in_data 0 32 } } }
	weights_load_3517 { ap_stable {  { weights_load_3517 in_data 0 32 } } }
	weights_load_3518 { ap_stable {  { weights_load_3518 in_data 0 32 } } }
	weights_load_3519 { ap_stable {  { weights_load_3519 in_data 0 32 } } }
	weights_load_3520 { ap_stable {  { weights_load_3520 in_data 0 32 } } }
	weights_load_3521 { ap_stable {  { weights_load_3521 in_data 0 32 } } }
	weights_load_3522 { ap_stable {  { weights_load_3522 in_data 0 32 } } }
	weights_load_3523 { ap_stable {  { weights_load_3523 in_data 0 32 } } }
	weights_load_3524 { ap_stable {  { weights_load_3524 in_data 0 32 } } }
	weights_load_3525 { ap_stable {  { weights_load_3525 in_data 0 32 } } }
	weights_load_3526 { ap_stable {  { weights_load_3526 in_data 0 32 } } }
	weights_load_3527 { ap_stable {  { weights_load_3527 in_data 0 32 } } }
	weights_load_3528 { ap_stable {  { weights_load_3528 in_data 0 32 } } }
	weights_load_3529 { ap_stable {  { weights_load_3529 in_data 0 32 } } }
	weights_load_3530 { ap_stable {  { weights_load_3530 in_data 0 32 } } }
	weights_load_3531 { ap_stable {  { weights_load_3531 in_data 0 32 } } }
	weights_load_3532 { ap_stable {  { weights_load_3532 in_data 0 32 } } }
	weights_load_3533 { ap_stable {  { weights_load_3533 in_data 0 32 } } }
	weights_load_3534 { ap_stable {  { weights_load_3534 in_data 0 32 } } }
	weights_load_3535 { ap_stable {  { weights_load_3535 in_data 0 32 } } }
	weights_load_3536 { ap_stable {  { weights_load_3536 in_data 0 32 } } }
	weights_load_3537 { ap_stable {  { weights_load_3537 in_data 0 32 } } }
	weights_load_3538 { ap_stable {  { weights_load_3538 in_data 0 32 } } }
	weights_load_3539 { ap_stable {  { weights_load_3539 in_data 0 32 } } }
	weights_load_3540 { ap_stable {  { weights_load_3540 in_data 0 32 } } }
	weights_load_3541 { ap_stable {  { weights_load_3541 in_data 0 32 } } }
	weights_load_3542 { ap_stable {  { weights_load_3542 in_data 0 32 } } }
	weights_load_3543 { ap_stable {  { weights_load_3543 in_data 0 32 } } }
	weights_load_3544 { ap_stable {  { weights_load_3544 in_data 0 32 } } }
	weights_load_3545 { ap_stable {  { weights_load_3545 in_data 0 32 } } }
	weights_load_3546 { ap_stable {  { weights_load_3546 in_data 0 32 } } }
	weights_load_3547 { ap_stable {  { weights_load_3547 in_data 0 32 } } }
	weights_load_3548 { ap_stable {  { weights_load_3548 in_data 0 32 } } }
	weights_load_3549 { ap_stable {  { weights_load_3549 in_data 0 32 } } }
	weights_load_3550 { ap_stable {  { weights_load_3550 in_data 0 32 } } }
	weights_load_3551 { ap_stable {  { weights_load_3551 in_data 0 32 } } }
	weights_load_3552 { ap_stable {  { weights_load_3552 in_data 0 32 } } }
	weights_load_3553 { ap_stable {  { weights_load_3553 in_data 0 32 } } }
	weights_load_3554 { ap_stable {  { weights_load_3554 in_data 0 32 } } }
	weights_load_3555 { ap_stable {  { weights_load_3555 in_data 0 32 } } }
	weights_load_3556 { ap_stable {  { weights_load_3556 in_data 0 32 } } }
	weights_load_3557 { ap_stable {  { weights_load_3557 in_data 0 32 } } }
	weights_load_3558 { ap_stable {  { weights_load_3558 in_data 0 32 } } }
	weights_load_3559 { ap_stable {  { weights_load_3559 in_data 0 32 } } }
	weights_load_3560 { ap_stable {  { weights_load_3560 in_data 0 32 } } }
	weights_load_3561 { ap_stable {  { weights_load_3561 in_data 0 32 } } }
	weights_load_3562 { ap_stable {  { weights_load_3562 in_data 0 32 } } }
	weights_load_3563 { ap_stable {  { weights_load_3563 in_data 0 32 } } }
	weights_load_3564 { ap_stable {  { weights_load_3564 in_data 0 32 } } }
	weights_load_3565 { ap_stable {  { weights_load_3565 in_data 0 32 } } }
	weights_load_3566 { ap_stable {  { weights_load_3566 in_data 0 32 } } }
	weights_load_3567 { ap_stable {  { weights_load_3567 in_data 0 32 } } }
	weights_load_3568 { ap_stable {  { weights_load_3568 in_data 0 32 } } }
	weights_load_3569 { ap_stable {  { weights_load_3569 in_data 0 32 } } }
	weights_load_3570 { ap_stable {  { weights_load_3570 in_data 0 32 } } }
	weights_load_3571 { ap_stable {  { weights_load_3571 in_data 0 32 } } }
	weights_load_3572 { ap_stable {  { weights_load_3572 in_data 0 32 } } }
	weights_load_3573 { ap_stable {  { weights_load_3573 in_data 0 32 } } }
	weights_load_3574 { ap_stable {  { weights_load_3574 in_data 0 32 } } }
	weights_load_3575 { ap_stable {  { weights_load_3575 in_data 0 32 } } }
	weights_load_3576 { ap_stable {  { weights_load_3576 in_data 0 32 } } }
	weights_load_3577 { ap_stable {  { weights_load_3577 in_data 0 32 } } }
	weights_load_3578 { ap_stable {  { weights_load_3578 in_data 0 32 } } }
	weights_load_3579 { ap_stable {  { weights_load_3579 in_data 0 32 } } }
	weights_load_3580 { ap_stable {  { weights_load_3580 in_data 0 32 } } }
	weights_load_3581 { ap_stable {  { weights_load_3581 in_data 0 32 } } }
	weights_load_3582 { ap_stable {  { weights_load_3582 in_data 0 32 } } }
	weights_load_3583 { ap_stable {  { weights_load_3583 in_data 0 32 } } }
	weights_load_3584 { ap_stable {  { weights_load_3584 in_data 0 32 } } }
	weights_load_3585 { ap_stable {  { weights_load_3585 in_data 0 32 } } }
	weights_load_3586 { ap_stable {  { weights_load_3586 in_data 0 32 } } }
	weights_load_3587 { ap_stable {  { weights_load_3587 in_data 0 32 } } }
	weights_load_3588 { ap_stable {  { weights_load_3588 in_data 0 32 } } }
	weights_load_3589 { ap_stable {  { weights_load_3589 in_data 0 32 } } }
	weights_load_3590 { ap_stable {  { weights_load_3590 in_data 0 32 } } }
	weights_load_3591 { ap_stable {  { weights_load_3591 in_data 0 32 } } }
	weights_load_3592 { ap_stable {  { weights_load_3592 in_data 0 32 } } }
	weights_load_3593 { ap_stable {  { weights_load_3593 in_data 0 32 } } }
	weights_load_3594 { ap_stable {  { weights_load_3594 in_data 0 32 } } }
	weights_load_3595 { ap_stable {  { weights_load_3595 in_data 0 32 } } }
	weights_load_3596 { ap_stable {  { weights_load_3596 in_data 0 32 } } }
	weights_load_3597 { ap_stable {  { weights_load_3597 in_data 0 32 } } }
	weights_load_3598 { ap_stable {  { weights_load_3598 in_data 0 32 } } }
	weights_load_3599 { ap_stable {  { weights_load_3599 in_data 0 32 } } }
	weights_load_3600 { ap_stable {  { weights_load_3600 in_data 0 32 } } }
	weights_load_3601 { ap_stable {  { weights_load_3601 in_data 0 32 } } }
	weights_load_3602 { ap_stable {  { weights_load_3602 in_data 0 32 } } }
	weights_load_3603 { ap_stable {  { weights_load_3603 in_data 0 32 } } }
	weights_load_3604 { ap_stable {  { weights_load_3604 in_data 0 32 } } }
	weights_load_3605 { ap_stable {  { weights_load_3605 in_data 0 32 } } }
	weights_load_3606 { ap_stable {  { weights_load_3606 in_data 0 32 } } }
	weights_load_3607 { ap_stable {  { weights_load_3607 in_data 0 32 } } }
	weights_load_3608 { ap_stable {  { weights_load_3608 in_data 0 32 } } }
	weights_load_3609 { ap_stable {  { weights_load_3609 in_data 0 32 } } }
	weights_load_3610 { ap_stable {  { weights_load_3610 in_data 0 32 } } }
	weights_load_3611 { ap_stable {  { weights_load_3611 in_data 0 32 } } }
	weights_load_3612 { ap_stable {  { weights_load_3612 in_data 0 32 } } }
	weights_load_3613 { ap_stable {  { weights_load_3613 in_data 0 32 } } }
	weights_load_3614 { ap_stable {  { weights_load_3614 in_data 0 32 } } }
	weights_load_3615 { ap_stable {  { weights_load_3615 in_data 0 32 } } }
	weights_load_3616 { ap_stable {  { weights_load_3616 in_data 0 32 } } }
	weights_load_3617 { ap_stable {  { weights_load_3617 in_data 0 32 } } }
	weights_load_3618 { ap_stable {  { weights_load_3618 in_data 0 32 } } }
	weights_load_3619 { ap_stable {  { weights_load_3619 in_data 0 32 } } }
	weights_load_3620 { ap_stable {  { weights_load_3620 in_data 0 32 } } }
	weights_load_3621 { ap_stable {  { weights_load_3621 in_data 0 32 } } }
	weights_load_3622 { ap_stable {  { weights_load_3622 in_data 0 32 } } }
	weights_load_3623 { ap_stable {  { weights_load_3623 in_data 0 32 } } }
	weights_load_3624 { ap_stable {  { weights_load_3624 in_data 0 32 } } }
	weights_load_3625 { ap_stable {  { weights_load_3625 in_data 0 32 } } }
	weights_load_3626 { ap_stable {  { weights_load_3626 in_data 0 32 } } }
	weights_load_3627 { ap_stable {  { weights_load_3627 in_data 0 32 } } }
	weights_load_3628 { ap_stable {  { weights_load_3628 in_data 0 32 } } }
	weights_load_3629 { ap_stable {  { weights_load_3629 in_data 0 32 } } }
	weights_load_3630 { ap_stable {  { weights_load_3630 in_data 0 32 } } }
	weights_load_3631 { ap_stable {  { weights_load_3631 in_data 0 32 } } }
	weights_load_3632 { ap_stable {  { weights_load_3632 in_data 0 32 } } }
	weights_load_3633 { ap_stable {  { weights_load_3633 in_data 0 32 } } }
	weights_load_3634 { ap_stable {  { weights_load_3634 in_data 0 32 } } }
	weights_load_3635 { ap_stable {  { weights_load_3635 in_data 0 32 } } }
	weights_load_3636 { ap_stable {  { weights_load_3636 in_data 0 32 } } }
	weights_load_3637 { ap_stable {  { weights_load_3637 in_data 0 32 } } }
	weights_load_3638 { ap_stable {  { weights_load_3638 in_data 0 32 } } }
	weights_load_3639 { ap_stable {  { weights_load_3639 in_data 0 32 } } }
	weights_load_3640 { ap_stable {  { weights_load_3640 in_data 0 32 } } }
	weights_load_3641 { ap_stable {  { weights_load_3641 in_data 0 32 } } }
	weights_load_3642 { ap_stable {  { weights_load_3642 in_data 0 32 } } }
	weights_load_3643 { ap_stable {  { weights_load_3643 in_data 0 32 } } }
	weights_load_3644 { ap_stable {  { weights_load_3644 in_data 0 32 } } }
	weights_load_3645 { ap_stable {  { weights_load_3645 in_data 0 32 } } }
	weights_load_3646 { ap_stable {  { weights_load_3646 in_data 0 32 } } }
	weights_load_3647 { ap_stable {  { weights_load_3647 in_data 0 32 } } }
	weights_load_3648 { ap_stable {  { weights_load_3648 in_data 0 32 } } }
	weights_load_3649 { ap_stable {  { weights_load_3649 in_data 0 32 } } }
	weights_load_3650 { ap_stable {  { weights_load_3650 in_data 0 32 } } }
	weights_load_3651 { ap_stable {  { weights_load_3651 in_data 0 32 } } }
	weights_load_3652 { ap_stable {  { weights_load_3652 in_data 0 32 } } }
	weights_load_3653 { ap_stable {  { weights_load_3653 in_data 0 32 } } }
	weights_load_3654 { ap_stable {  { weights_load_3654 in_data 0 32 } } }
	weights_load_3655 { ap_stable {  { weights_load_3655 in_data 0 32 } } }
	weights_load_3656 { ap_stable {  { weights_load_3656 in_data 0 32 } } }
	weights_load_3657 { ap_stable {  { weights_load_3657 in_data 0 32 } } }
	weights_load_3658 { ap_stable {  { weights_load_3658 in_data 0 32 } } }
	weights_load_3659 { ap_stable {  { weights_load_3659 in_data 0 32 } } }
	weights_load_3660 { ap_stable {  { weights_load_3660 in_data 0 32 } } }
	weights_load_3661 { ap_stable {  { weights_load_3661 in_data 0 32 } } }
	weights_load_3662 { ap_stable {  { weights_load_3662 in_data 0 32 } } }
	weights_load_3663 { ap_stable {  { weights_load_3663 in_data 0 32 } } }
	weights_load_3664 { ap_stable {  { weights_load_3664 in_data 0 32 } } }
	weights_load_3665 { ap_stable {  { weights_load_3665 in_data 0 32 } } }
	weights_load_3666 { ap_stable {  { weights_load_3666 in_data 0 32 } } }
	weights_load_3667 { ap_stable {  { weights_load_3667 in_data 0 32 } } }
	weights_load_3668 { ap_stable {  { weights_load_3668 in_data 0 32 } } }
	weights_load_3669 { ap_stable {  { weights_load_3669 in_data 0 32 } } }
	weights_load_3670 { ap_stable {  { weights_load_3670 in_data 0 32 } } }
	weights_load_3671 { ap_stable {  { weights_load_3671 in_data 0 32 } } }
	weights_load_3672 { ap_stable {  { weights_load_3672 in_data 0 32 } } }
	weights_load_3673 { ap_stable {  { weights_load_3673 in_data 0 32 } } }
	weights_load_3674 { ap_stable {  { weights_load_3674 in_data 0 32 } } }
	weights_load_3675 { ap_stable {  { weights_load_3675 in_data 0 32 } } }
	weights_load_3676 { ap_stable {  { weights_load_3676 in_data 0 32 } } }
	weights_load_3677 { ap_stable {  { weights_load_3677 in_data 0 32 } } }
	weights_load_3678 { ap_stable {  { weights_load_3678 in_data 0 32 } } }
	weights_load_3679 { ap_stable {  { weights_load_3679 in_data 0 32 } } }
	weights_load_3680 { ap_stable {  { weights_load_3680 in_data 0 32 } } }
	weights_load_3681 { ap_stable {  { weights_load_3681 in_data 0 32 } } }
	weights_load_3682 { ap_stable {  { weights_load_3682 in_data 0 32 } } }
	weights_load_3683 { ap_stable {  { weights_load_3683 in_data 0 32 } } }
	weights_load_3684 { ap_stable {  { weights_load_3684 in_data 0 32 } } }
	weights_load_3685 { ap_stable {  { weights_load_3685 in_data 0 32 } } }
	weights_load_3686 { ap_stable {  { weights_load_3686 in_data 0 32 } } }
	weights_load_3687 { ap_stable {  { weights_load_3687 in_data 0 32 } } }
	weights_load_3688 { ap_stable {  { weights_load_3688 in_data 0 32 } } }
	weights_load_3689 { ap_stable {  { weights_load_3689 in_data 0 32 } } }
	weights_load_3690 { ap_stable {  { weights_load_3690 in_data 0 32 } } }
	weights_load_3691 { ap_stable {  { weights_load_3691 in_data 0 32 } } }
	weights_load_3692 { ap_stable {  { weights_load_3692 in_data 0 32 } } }
	weights_load_3693 { ap_stable {  { weights_load_3693 in_data 0 32 } } }
	weights_load_3694 { ap_stable {  { weights_load_3694 in_data 0 32 } } }
	weights_load_3695 { ap_stable {  { weights_load_3695 in_data 0 32 } } }
	weights_load_3696 { ap_stable {  { weights_load_3696 in_data 0 32 } } }
	weights_load_3697 { ap_stable {  { weights_load_3697 in_data 0 32 } } }
	weights_load_3698 { ap_stable {  { weights_load_3698 in_data 0 32 } } }
	weights_load_3699 { ap_stable {  { weights_load_3699 in_data 0 32 } } }
	weights_load_3700 { ap_stable {  { weights_load_3700 in_data 0 32 } } }
	weights_load_3701 { ap_stable {  { weights_load_3701 in_data 0 32 } } }
	weights_load_3702 { ap_stable {  { weights_load_3702 in_data 0 32 } } }
	weights_load_3703 { ap_stable {  { weights_load_3703 in_data 0 32 } } }
	weights_load_3704 { ap_stable {  { weights_load_3704 in_data 0 32 } } }
	weights_load_3705 { ap_stable {  { weights_load_3705 in_data 0 32 } } }
	weights_load_3706 { ap_stable {  { weights_load_3706 in_data 0 32 } } }
	weights_load_3707 { ap_stable {  { weights_load_3707 in_data 0 32 } } }
	weights_load_3708 { ap_stable {  { weights_load_3708 in_data 0 32 } } }
	weights_load_3709 { ap_stable {  { weights_load_3709 in_data 0 32 } } }
	weights_load_3710 { ap_stable {  { weights_load_3710 in_data 0 32 } } }
	weights_load_3711 { ap_stable {  { weights_load_3711 in_data 0 32 } } }
	weights_load_3712 { ap_stable {  { weights_load_3712 in_data 0 32 } } }
	weights_load_3713 { ap_stable {  { weights_load_3713 in_data 0 32 } } }
	weights_load_3714 { ap_stable {  { weights_load_3714 in_data 0 32 } } }
	weights_load_3715 { ap_stable {  { weights_load_3715 in_data 0 32 } } }
	weights_load_3716 { ap_stable {  { weights_load_3716 in_data 0 32 } } }
	weights_load_3717 { ap_stable {  { weights_load_3717 in_data 0 32 } } }
	weights_load_3718 { ap_stable {  { weights_load_3718 in_data 0 32 } } }
	weights_load_3719 { ap_stable {  { weights_load_3719 in_data 0 32 } } }
	weights_load_3720 { ap_stable {  { weights_load_3720 in_data 0 32 } } }
	weights_load_3721 { ap_stable {  { weights_load_3721 in_data 0 32 } } }
	weights_load_3722 { ap_stable {  { weights_load_3722 in_data 0 32 } } }
	weights_load_3723 { ap_stable {  { weights_load_3723 in_data 0 32 } } }
	weights_load_3724 { ap_stable {  { weights_load_3724 in_data 0 32 } } }
	weights_load_3725 { ap_stable {  { weights_load_3725 in_data 0 32 } } }
	weights_load_3726 { ap_stable {  { weights_load_3726 in_data 0 32 } } }
	weights_load_3727 { ap_stable {  { weights_load_3727 in_data 0 32 } } }
	weights_load_3728 { ap_stable {  { weights_load_3728 in_data 0 32 } } }
	weights_load_3729 { ap_stable {  { weights_load_3729 in_data 0 32 } } }
	weights_load_3730 { ap_stable {  { weights_load_3730 in_data 0 32 } } }
	weights_load_3731 { ap_stable {  { weights_load_3731 in_data 0 32 } } }
	weights_load_3732 { ap_stable {  { weights_load_3732 in_data 0 32 } } }
	weights_load_3733 { ap_stable {  { weights_load_3733 in_data 0 32 } } }
	weights_load_3734 { ap_stable {  { weights_load_3734 in_data 0 32 } } }
	weights_load_3735 { ap_stable {  { weights_load_3735 in_data 0 32 } } }
	weights_load_3736 { ap_stable {  { weights_load_3736 in_data 0 32 } } }
	weights_load_3737 { ap_stable {  { weights_load_3737 in_data 0 32 } } }
	weights_load_3738 { ap_stable {  { weights_load_3738 in_data 0 32 } } }
	weights_load_3739 { ap_stable {  { weights_load_3739 in_data 0 32 } } }
	weights_load_3740 { ap_stable {  { weights_load_3740 in_data 0 32 } } }
	weights_load_3741 { ap_stable {  { weights_load_3741 in_data 0 32 } } }
	weights_load_3742 { ap_stable {  { weights_load_3742 in_data 0 32 } } }
	weights_load_3743 { ap_stable {  { weights_load_3743 in_data 0 32 } } }
	weights_load_3744 { ap_stable {  { weights_load_3744 in_data 0 32 } } }
	weights_load_3745 { ap_stable {  { weights_load_3745 in_data 0 32 } } }
	weights_load_3746 { ap_stable {  { weights_load_3746 in_data 0 32 } } }
	weights_load_3747 { ap_stable {  { weights_load_3747 in_data 0 32 } } }
	weights_load_3748 { ap_stable {  { weights_load_3748 in_data 0 32 } } }
	weights_load_3749 { ap_stable {  { weights_load_3749 in_data 0 32 } } }
	weights_load_3750 { ap_stable {  { weights_load_3750 in_data 0 32 } } }
	weights_load_3751 { ap_stable {  { weights_load_3751 in_data 0 32 } } }
	weights_load_3752 { ap_stable {  { weights_load_3752 in_data 0 32 } } }
	weights_load_3753 { ap_stable {  { weights_load_3753 in_data 0 32 } } }
	weights_load_3754 { ap_stable {  { weights_load_3754 in_data 0 32 } } }
	weights_load_3755 { ap_stable {  { weights_load_3755 in_data 0 32 } } }
	weights_load_3756 { ap_stable {  { weights_load_3756 in_data 0 32 } } }
	weights_load_3757 { ap_stable {  { weights_load_3757 in_data 0 32 } } }
	weights_load_3758 { ap_stable {  { weights_load_3758 in_data 0 32 } } }
	weights_load_3759 { ap_stable {  { weights_load_3759 in_data 0 32 } } }
	weights_load_3760 { ap_stable {  { weights_load_3760 in_data 0 32 } } }
	weights_load_3761 { ap_stable {  { weights_load_3761 in_data 0 32 } } }
	weights_load_3762 { ap_stable {  { weights_load_3762 in_data 0 32 } } }
	weights_load_3763 { ap_stable {  { weights_load_3763 in_data 0 32 } } }
	weights_load_3764 { ap_stable {  { weights_load_3764 in_data 0 32 } } }
	weights_load_3765 { ap_stable {  { weights_load_3765 in_data 0 32 } } }
	weights_load_3766 { ap_stable {  { weights_load_3766 in_data 0 32 } } }
	weights_load_3767 { ap_stable {  { weights_load_3767 in_data 0 32 } } }
	weights_load_3768 { ap_stable {  { weights_load_3768 in_data 0 32 } } }
	weights_load_3769 { ap_stable {  { weights_load_3769 in_data 0 32 } } }
	weights_load_3770 { ap_stable {  { weights_load_3770 in_data 0 32 } } }
	weights_load_3771 { ap_stable {  { weights_load_3771 in_data 0 32 } } }
	weights_load_3772 { ap_stable {  { weights_load_3772 in_data 0 32 } } }
	weights_load_3773 { ap_stable {  { weights_load_3773 in_data 0 32 } } }
	weights_load_3774 { ap_stable {  { weights_load_3774 in_data 0 32 } } }
	weights_load_3775 { ap_stable {  { weights_load_3775 in_data 0 32 } } }
	weights_load_3776 { ap_stable {  { weights_load_3776 in_data 0 32 } } }
	weights_load_3777 { ap_stable {  { weights_load_3777 in_data 0 32 } } }
	weights_load_3778 { ap_stable {  { weights_load_3778 in_data 0 32 } } }
	weights_load_3779 { ap_stable {  { weights_load_3779 in_data 0 32 } } }
	weights_load_3780 { ap_stable {  { weights_load_3780 in_data 0 32 } } }
	weights_load_3781 { ap_stable {  { weights_load_3781 in_data 0 32 } } }
	weights_load_3782 { ap_stable {  { weights_load_3782 in_data 0 32 } } }
	weights_load_3783 { ap_stable {  { weights_load_3783 in_data 0 32 } } }
	weights_load_3784 { ap_stable {  { weights_load_3784 in_data 0 32 } } }
	weights_load_3785 { ap_stable {  { weights_load_3785 in_data 0 32 } } }
	weights_load_3786 { ap_stable {  { weights_load_3786 in_data 0 32 } } }
	weights_load_3787 { ap_stable {  { weights_load_3787 in_data 0 32 } } }
	weights_load_3788 { ap_stable {  { weights_load_3788 in_data 0 32 } } }
	weights_load_3789 { ap_stable {  { weights_load_3789 in_data 0 32 } } }
	weights_load_3790 { ap_stable {  { weights_load_3790 in_data 0 32 } } }
	weights_load_3791 { ap_stable {  { weights_load_3791 in_data 0 32 } } }
	weights_load_3792 { ap_stable {  { weights_load_3792 in_data 0 32 } } }
	weights_load_3793 { ap_stable {  { weights_load_3793 in_data 0 32 } } }
	weights_load_3794 { ap_stable {  { weights_load_3794 in_data 0 32 } } }
	weights_load_3795 { ap_stable {  { weights_load_3795 in_data 0 32 } } }
	weights_load_3796 { ap_stable {  { weights_load_3796 in_data 0 32 } } }
	weights_load_3797 { ap_stable {  { weights_load_3797 in_data 0 32 } } }
	weights_load_3798 { ap_stable {  { weights_load_3798 in_data 0 32 } } }
	weights_load_3799 { ap_stable {  { weights_load_3799 in_data 0 32 } } }
	weights_load_3800 { ap_stable {  { weights_load_3800 in_data 0 32 } } }
	weights_load_3801 { ap_stable {  { weights_load_3801 in_data 0 32 } } }
	weights_load_3802 { ap_stable {  { weights_load_3802 in_data 0 32 } } }
	weights_load_3803 { ap_stable {  { weights_load_3803 in_data 0 32 } } }
	weights_load_3804 { ap_stable {  { weights_load_3804 in_data 0 32 } } }
	weights_load_3805 { ap_stable {  { weights_load_3805 in_data 0 32 } } }
	weights_load_3806 { ap_stable {  { weights_load_3806 in_data 0 32 } } }
	weights_load_3807 { ap_stable {  { weights_load_3807 in_data 0 32 } } }
	weights_load_3808 { ap_stable {  { weights_load_3808 in_data 0 32 } } }
	weights_load_3809 { ap_stable {  { weights_load_3809 in_data 0 32 } } }
	weights_load_3810 { ap_stable {  { weights_load_3810 in_data 0 32 } } }
	weights_load_3811 { ap_stable {  { weights_load_3811 in_data 0 32 } } }
	weights_load_3812 { ap_stable {  { weights_load_3812 in_data 0 32 } } }
	weights_load_3813 { ap_stable {  { weights_load_3813 in_data 0 32 } } }
	weights_load_3814 { ap_stable {  { weights_load_3814 in_data 0 32 } } }
	weights_load_3815 { ap_stable {  { weights_load_3815 in_data 0 32 } } }
	weights_load_3816 { ap_stable {  { weights_load_3816 in_data 0 32 } } }
	weights_load_3817 { ap_stable {  { weights_load_3817 in_data 0 32 } } }
	weights_load_3818 { ap_stable {  { weights_load_3818 in_data 0 32 } } }
	weights_load_3819 { ap_stable {  { weights_load_3819 in_data 0 32 } } }
	weights_load_3820 { ap_stable {  { weights_load_3820 in_data 0 32 } } }
	weights_load_3821 { ap_stable {  { weights_load_3821 in_data 0 32 } } }
	weights_load_3822 { ap_stable {  { weights_load_3822 in_data 0 32 } } }
	weights_load_3823 { ap_stable {  { weights_load_3823 in_data 0 32 } } }
	weights_load_3824 { ap_stable {  { weights_load_3824 in_data 0 32 } } }
	weights_load_3825 { ap_stable {  { weights_load_3825 in_data 0 32 } } }
	weights_load_3826 { ap_stable {  { weights_load_3826 in_data 0 32 } } }
	weights_load_3827 { ap_stable {  { weights_load_3827 in_data 0 32 } } }
	weights_load_3828 { ap_stable {  { weights_load_3828 in_data 0 32 } } }
	weights_load_3829 { ap_stable {  { weights_load_3829 in_data 0 32 } } }
	weights_load_3830 { ap_stable {  { weights_load_3830 in_data 0 32 } } }
	weights_load_3831 { ap_stable {  { weights_load_3831 in_data 0 32 } } }
	weights_load_3832 { ap_stable {  { weights_load_3832 in_data 0 32 } } }
	weights_load_3833 { ap_stable {  { weights_load_3833 in_data 0 32 } } }
	weights_load_3834 { ap_stable {  { weights_load_3834 in_data 0 32 } } }
	weights_load_3835 { ap_stable {  { weights_load_3835 in_data 0 32 } } }
	weights_load_3836 { ap_stable {  { weights_load_3836 in_data 0 32 } } }
	weights_load_3837 { ap_stable {  { weights_load_3837 in_data 0 32 } } }
	weights_load_3838 { ap_stable {  { weights_load_3838 in_data 0 32 } } }
	weights_load_3839 { ap_stable {  { weights_load_3839 in_data 0 32 } } }
	weights_load_3840 { ap_stable {  { weights_load_3840 in_data 0 32 } } }
	weights_load_3841 { ap_stable {  { weights_load_3841 in_data 0 32 } } }
	weights_load_3842 { ap_stable {  { weights_load_3842 in_data 0 32 } } }
	weights_load_3843 { ap_stable {  { weights_load_3843 in_data 0 32 } } }
	weights_load_3844 { ap_stable {  { weights_load_3844 in_data 0 32 } } }
	weights_load_3845 { ap_stable {  { weights_load_3845 in_data 0 32 } } }
	weights_load_3846 { ap_stable {  { weights_load_3846 in_data 0 32 } } }
	weights_load_3847 { ap_stable {  { weights_load_3847 in_data 0 32 } } }
	weights_load_3848 { ap_stable {  { weights_load_3848 in_data 0 32 } } }
	weights_load_3849 { ap_stable {  { weights_load_3849 in_data 0 32 } } }
	weights_load_3850 { ap_stable {  { weights_load_3850 in_data 0 32 } } }
	weights_load_3851 { ap_stable {  { weights_load_3851 in_data 0 32 } } }
	weights_load_3852 { ap_stable {  { weights_load_3852 in_data 0 32 } } }
	weights_load_3853 { ap_stable {  { weights_load_3853 in_data 0 32 } } }
	weights_load_3854 { ap_stable {  { weights_load_3854 in_data 0 32 } } }
	weights_load_3855 { ap_stable {  { weights_load_3855 in_data 0 32 } } }
	weights_load_3856 { ap_stable {  { weights_load_3856 in_data 0 32 } } }
	weights_load_3857 { ap_stable {  { weights_load_3857 in_data 0 32 } } }
	weights_load_3858 { ap_stable {  { weights_load_3858 in_data 0 32 } } }
	weights_load_3859 { ap_stable {  { weights_load_3859 in_data 0 32 } } }
	weights_load_3860 { ap_stable {  { weights_load_3860 in_data 0 32 } } }
	weights_load_3861 { ap_stable {  { weights_load_3861 in_data 0 32 } } }
	weights_load_3862 { ap_stable {  { weights_load_3862 in_data 0 32 } } }
	weights_load_3863 { ap_stable {  { weights_load_3863 in_data 0 32 } } }
	weights_load_3864 { ap_stable {  { weights_load_3864 in_data 0 32 } } }
	weights_load_3865 { ap_stable {  { weights_load_3865 in_data 0 32 } } }
	weights_load_3866 { ap_stable {  { weights_load_3866 in_data 0 32 } } }
	weights_load_3867 { ap_stable {  { weights_load_3867 in_data 0 32 } } }
	weights_load_3868 { ap_stable {  { weights_load_3868 in_data 0 32 } } }
	weights_load_3869 { ap_stable {  { weights_load_3869 in_data 0 32 } } }
	weights_load_3870 { ap_stable {  { weights_load_3870 in_data 0 32 } } }
	weights_load_3871 { ap_stable {  { weights_load_3871 in_data 0 32 } } }
	weights_load_3872 { ap_stable {  { weights_load_3872 in_data 0 32 } } }
	weights_load_3873 { ap_stable {  { weights_load_3873 in_data 0 32 } } }
	weights_load_3874 { ap_stable {  { weights_load_3874 in_data 0 32 } } }
	weights_load_3875 { ap_stable {  { weights_load_3875 in_data 0 32 } } }
	weights_load_3876 { ap_stable {  { weights_load_3876 in_data 0 32 } } }
	weights_load_3877 { ap_stable {  { weights_load_3877 in_data 0 32 } } }
	weights_load_3878 { ap_stable {  { weights_load_3878 in_data 0 32 } } }
	weights_load_3879 { ap_stable {  { weights_load_3879 in_data 0 32 } } }
	weights_load_3880 { ap_stable {  { weights_load_3880 in_data 0 32 } } }
	weights_load_3881 { ap_stable {  { weights_load_3881 in_data 0 32 } } }
	weights_load_3882 { ap_stable {  { weights_load_3882 in_data 0 32 } } }
	weights_load_3883 { ap_stable {  { weights_load_3883 in_data 0 32 } } }
	weights_load_3884 { ap_stable {  { weights_load_3884 in_data 0 32 } } }
	weights_load_3885 { ap_stable {  { weights_load_3885 in_data 0 32 } } }
	weights_load_3886 { ap_stable {  { weights_load_3886 in_data 0 32 } } }
	weights_load_3887 { ap_stable {  { weights_load_3887 in_data 0 32 } } }
	weights_load_3888 { ap_stable {  { weights_load_3888 in_data 0 32 } } }
	weights_load_3889 { ap_stable {  { weights_load_3889 in_data 0 32 } } }
	weights_load_3890 { ap_stable {  { weights_load_3890 in_data 0 32 } } }
	weights_load_3891 { ap_stable {  { weights_load_3891 in_data 0 32 } } }
	weights_load_3892 { ap_stable {  { weights_load_3892 in_data 0 32 } } }
	weights_load_3893 { ap_stable {  { weights_load_3893 in_data 0 32 } } }
	weights_load_3894 { ap_stable {  { weights_load_3894 in_data 0 32 } } }
	weights_load_3895 { ap_stable {  { weights_load_3895 in_data 0 32 } } }
	weights_load_3896 { ap_stable {  { weights_load_3896 in_data 0 32 } } }
	weights_load_3897 { ap_stable {  { weights_load_3897 in_data 0 32 } } }
	weights_load_3898 { ap_stable {  { weights_load_3898 in_data 0 32 } } }
	weights_load_3899 { ap_stable {  { weights_load_3899 in_data 0 32 } } }
	weights_load_3900 { ap_stable {  { weights_load_3900 in_data 0 32 } } }
	weights_load_3901 { ap_stable {  { weights_load_3901 in_data 0 32 } } }
	weights_load_3902 { ap_stable {  { weights_load_3902 in_data 0 32 } } }
	weights_load_3903 { ap_stable {  { weights_load_3903 in_data 0 32 } } }
	weights_load_3904 { ap_stable {  { weights_load_3904 in_data 0 32 } } }
	weights_load_3905 { ap_stable {  { weights_load_3905 in_data 0 32 } } }
	weights_load_3906 { ap_stable {  { weights_load_3906 in_data 0 32 } } }
	weights_load_3907 { ap_stable {  { weights_load_3907 in_data 0 32 } } }
	weights_load_3908 { ap_stable {  { weights_load_3908 in_data 0 32 } } }
	weights_load_3909 { ap_stable {  { weights_load_3909 in_data 0 32 } } }
	weights_load_3910 { ap_stable {  { weights_load_3910 in_data 0 32 } } }
	weights_load_3911 { ap_stable {  { weights_load_3911 in_data 0 32 } } }
	weights_load_3912 { ap_stable {  { weights_load_3912 in_data 0 32 } } }
	weights_load_3913 { ap_stable {  { weights_load_3913 in_data 0 32 } } }
	weights_load_3914 { ap_stable {  { weights_load_3914 in_data 0 32 } } }
	weights_load_3915 { ap_stable {  { weights_load_3915 in_data 0 32 } } }
	weights_load_3916 { ap_stable {  { weights_load_3916 in_data 0 32 } } }
	weights_load_3917 { ap_stable {  { weights_load_3917 in_data 0 32 } } }
	weights_load_3918 { ap_stable {  { weights_load_3918 in_data 0 32 } } }
	weights_load_3919 { ap_stable {  { weights_load_3919 in_data 0 32 } } }
	weights_load_3920 { ap_stable {  { weights_load_3920 in_data 0 32 } } }
	weights_load_3921 { ap_stable {  { weights_load_3921 in_data 0 32 } } }
	weights_load_3922 { ap_stable {  { weights_load_3922 in_data 0 32 } } }
	weights_load_3923 { ap_stable {  { weights_load_3923 in_data 0 32 } } }
	weights_load_3924 { ap_stable {  { weights_load_3924 in_data 0 32 } } }
	weights_load_3925 { ap_stable {  { weights_load_3925 in_data 0 32 } } }
	weights_load_3926 { ap_stable {  { weights_load_3926 in_data 0 32 } } }
	weights_load_3927 { ap_stable {  { weights_load_3927 in_data 0 32 } } }
	weights_load_3928 { ap_stable {  { weights_load_3928 in_data 0 32 } } }
	weights_load_3929 { ap_stable {  { weights_load_3929 in_data 0 32 } } }
	weights_load_3930 { ap_stable {  { weights_load_3930 in_data 0 32 } } }
	weights_load_3931 { ap_stable {  { weights_load_3931 in_data 0 32 } } }
	weights_load_3932 { ap_stable {  { weights_load_3932 in_data 0 32 } } }
	weights_load_3933 { ap_stable {  { weights_load_3933 in_data 0 32 } } }
	weights_load_3934 { ap_stable {  { weights_load_3934 in_data 0 32 } } }
	weights_load_3935 { ap_stable {  { weights_load_3935 in_data 0 32 } } }
	weights_load_3936 { ap_stable {  { weights_load_3936 in_data 0 32 } } }
	weights_load_3937 { ap_stable {  { weights_load_3937 in_data 0 32 } } }
	weights_load_3938 { ap_stable {  { weights_load_3938 in_data 0 32 } } }
	weights_load_3939 { ap_stable {  { weights_load_3939 in_data 0 32 } } }
	weights_load_3940 { ap_stable {  { weights_load_3940 in_data 0 32 } } }
	weights_load_3941 { ap_stable {  { weights_load_3941 in_data 0 32 } } }
	weights_load_3942 { ap_stable {  { weights_load_3942 in_data 0 32 } } }
	weights_load_3943 { ap_stable {  { weights_load_3943 in_data 0 32 } } }
	weights_load_3944 { ap_stable {  { weights_load_3944 in_data 0 32 } } }
	weights_load_3945 { ap_stable {  { weights_load_3945 in_data 0 32 } } }
	weights_load_3946 { ap_stable {  { weights_load_3946 in_data 0 32 } } }
	weights_load_3947 { ap_stable {  { weights_load_3947 in_data 0 32 } } }
	weights_load_3948 { ap_stable {  { weights_load_3948 in_data 0 32 } } }
	weights_load_3949 { ap_stable {  { weights_load_3949 in_data 0 32 } } }
	weights_load_3950 { ap_stable {  { weights_load_3950 in_data 0 32 } } }
	weights_load_3951 { ap_stable {  { weights_load_3951 in_data 0 32 } } }
	weights_load_3952 { ap_stable {  { weights_load_3952 in_data 0 32 } } }
	weights_load_3953 { ap_stable {  { weights_load_3953 in_data 0 32 } } }
	weights_load_3954 { ap_stable {  { weights_load_3954 in_data 0 32 } } }
	weights_load_3955 { ap_stable {  { weights_load_3955 in_data 0 32 } } }
	weights_load_3956 { ap_stable {  { weights_load_3956 in_data 0 32 } } }
	weights_load_3957 { ap_stable {  { weights_load_3957 in_data 0 32 } } }
	weights_load_3958 { ap_stable {  { weights_load_3958 in_data 0 32 } } }
	weights_load_3959 { ap_stable {  { weights_load_3959 in_data 0 32 } } }
	weights_load_3960 { ap_stable {  { weights_load_3960 in_data 0 32 } } }
	weights_load_3961 { ap_stable {  { weights_load_3961 in_data 0 32 } } }
	weights_load_3962 { ap_stable {  { weights_load_3962 in_data 0 32 } } }
	weights_load_3963 { ap_stable {  { weights_load_3963 in_data 0 32 } } }
	weights_load_3964 { ap_stable {  { weights_load_3964 in_data 0 32 } } }
	weights_load_3965 { ap_stable {  { weights_load_3965 in_data 0 32 } } }
	weights_load_3966 { ap_stable {  { weights_load_3966 in_data 0 32 } } }
	weights_load_3967 { ap_stable {  { weights_load_3967 in_data 0 32 } } }
	weights_load_3968 { ap_stable {  { weights_load_3968 in_data 0 32 } } }
	weights_load_3969 { ap_stable {  { weights_load_3969 in_data 0 32 } } }
	weights_load_3970 { ap_stable {  { weights_load_3970 in_data 0 32 } } }
	weights_load_3971 { ap_stable {  { weights_load_3971 in_data 0 32 } } }
	weights_load_3972 { ap_stable {  { weights_load_3972 in_data 0 32 } } }
	weights_load_3973 { ap_stable {  { weights_load_3973 in_data 0 32 } } }
	weights_load_3974 { ap_stable {  { weights_load_3974 in_data 0 32 } } }
	weights_load_3975 { ap_stable {  { weights_load_3975 in_data 0 32 } } }
	weights_load_3976 { ap_stable {  { weights_load_3976 in_data 0 32 } } }
	weights_load_3977 { ap_stable {  { weights_load_3977 in_data 0 32 } } }
	weights_load_3978 { ap_stable {  { weights_load_3978 in_data 0 32 } } }
	weights_load_3979 { ap_stable {  { weights_load_3979 in_data 0 32 } } }
	weights_load_3980 { ap_stable {  { weights_load_3980 in_data 0 32 } } }
	weights_load_3981 { ap_stable {  { weights_load_3981 in_data 0 32 } } }
	weights_load_3982 { ap_stable {  { weights_load_3982 in_data 0 32 } } }
	weights_load_3983 { ap_stable {  { weights_load_3983 in_data 0 32 } } }
	weights_load_3984 { ap_stable {  { weights_load_3984 in_data 0 32 } } }
	weights_load_3985 { ap_stable {  { weights_load_3985 in_data 0 32 } } }
	weights_load_3986 { ap_stable {  { weights_load_3986 in_data 0 32 } } }
	weights_load_3987 { ap_stable {  { weights_load_3987 in_data 0 32 } } }
	weights_load_3988 { ap_stable {  { weights_load_3988 in_data 0 32 } } }
	weights_load_3989 { ap_stable {  { weights_load_3989 in_data 0 32 } } }
	weights_load_3990 { ap_stable {  { weights_load_3990 in_data 0 32 } } }
	weights_load_3991 { ap_stable {  { weights_load_3991 in_data 0 32 } } }
	weights_load_3992 { ap_stable {  { weights_load_3992 in_data 0 32 } } }
	weights_load_3993 { ap_stable {  { weights_load_3993 in_data 0 32 } } }
	weights_load_3994 { ap_stable {  { weights_load_3994 in_data 0 32 } } }
	weights_load_3995 { ap_stable {  { weights_load_3995 in_data 0 32 } } }
	weights_load_3996 { ap_stable {  { weights_load_3996 in_data 0 32 } } }
	weights_load_3997 { ap_stable {  { weights_load_3997 in_data 0 32 } } }
	weights_load_3998 { ap_stable {  { weights_load_3998 in_data 0 32 } } }
	weights_load_3999 { ap_stable {  { weights_load_3999 in_data 0 32 } } }
	weights_load_4000 { ap_stable {  { weights_load_4000 in_data 0 32 } } }
	weights_load_4001 { ap_stable {  { weights_load_4001 in_data 0 32 } } }
	weights_load_4002 { ap_stable {  { weights_load_4002 in_data 0 32 } } }
	weights_load_4003 { ap_stable {  { weights_load_4003 in_data 0 32 } } }
	weights_load_4004 { ap_stable {  { weights_load_4004 in_data 0 32 } } }
	weights_load_4005 { ap_stable {  { weights_load_4005 in_data 0 32 } } }
	weights_load_4006 { ap_stable {  { weights_load_4006 in_data 0 32 } } }
	weights_load_4007 { ap_stable {  { weights_load_4007 in_data 0 32 } } }
	weights_load_4008 { ap_stable {  { weights_load_4008 in_data 0 32 } } }
	weights_load_4009 { ap_stable {  { weights_load_4009 in_data 0 32 } } }
	weights_load_4010 { ap_stable {  { weights_load_4010 in_data 0 32 } } }
	weights_load_4011 { ap_stable {  { weights_load_4011 in_data 0 32 } } }
	weights_load_4012 { ap_stable {  { weights_load_4012 in_data 0 32 } } }
	weights_load_4013 { ap_stable {  { weights_load_4013 in_data 0 32 } } }
	weights_load_4014 { ap_stable {  { weights_load_4014 in_data 0 32 } } }
	weights_load_4015 { ap_stable {  { weights_load_4015 in_data 0 32 } } }
	weights_load_4016 { ap_stable {  { weights_load_4016 in_data 0 32 } } }
	weights_load_4017 { ap_stable {  { weights_load_4017 in_data 0 32 } } }
	weights_load_4018 { ap_stable {  { weights_load_4018 in_data 0 32 } } }
	weights_load_4019 { ap_stable {  { weights_load_4019 in_data 0 32 } } }
	weights_load_4020 { ap_stable {  { weights_load_4020 in_data 0 32 } } }
	weights_load_4021 { ap_stable {  { weights_load_4021 in_data 0 32 } } }
	weights_load_4022 { ap_stable {  { weights_load_4022 in_data 0 32 } } }
	weights_load_4023 { ap_stable {  { weights_load_4023 in_data 0 32 } } }
	weights_load_4024 { ap_stable {  { weights_load_4024 in_data 0 32 } } }
	weights_load_4025 { ap_stable {  { weights_load_4025 in_data 0 32 } } }
}
