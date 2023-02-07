python step1_pose.py data/keypoints.hdf5 data/masks.hdf5 data/camera.pkl output/reconstructed_poses.hdf5 --model vendor/smpl/models/basicmodel_m_lbs_10_207_0_v1.0.0.pkl

python step2_consensus.py output/reconstructed_poses.hdf5 data/masks.hdf5 data/camera.pkl output/consensus.pkl --obj_out output/consensus.obj --model vendor/smpl/models/basicmodel_m_lbs_10_207_0_v1.0.0.pkl

python step3_texture.py output/consensus.pkl  data/camera.pkl data/video.mp4 output/reconstructed_poses.hdf5 data/masks.hdf5 output/tex-video.jpg --model vendor/smpl/models/basicmodel_m_lbs_10_207_0_v1.0.0.pkl
