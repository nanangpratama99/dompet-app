import 'package:flutter/material.dart';

import '/../../models/model.dart';

class BuildCircleAvatar extends StatelessWidget {
  const BuildCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Recent User"),
        SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 10,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(imageData[2].image),
                ),
              ), // Front image
              Positioned(
                left: 50,
                child: CircleAvatar(
                  radius: 34,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imageData[1].image),
                  ),
                ),
              ), // Front image
              Positioned(
                left: 100,
                child: CircleAvatar(
                  radius: 34,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imageData[0].image),
                  ),
                ),
              ), // Front image
              Positioned(
                left: 150,
                child: CircleAvatar(
                  radius: 34,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imageData[4].image),
                  ),
                ),
              ),
              const Positioned(
                left: 200,
                child: BuildAvatarButton(),
              )
              // Front image
            ],
          ),
        ),
        const Text("Insert Amount"),
      ],
    );
  }
}

class BuildAvatarButton extends StatelessWidget {
  const BuildAvatarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextButton(
          onPressed: () {},
          child: const Center(
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
